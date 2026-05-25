import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma.service';
import { AuditService } from '../audit/audit.service';

@Injectable()
export class OffersService {
  constructor(
    private prisma: PrismaService,
    private audit: AuditService,
  ) {}

  async getAll(userId?: number) {
    return this.prisma.offer.findMany({
      where: userId ? { userId, deleted: false } : { deleted: false },
      orderBy: { id: 'desc' },
    });
  }

async getAllForAdmin() {
  return this.prisma.offer.findMany({
    where: {
      deleted: false,
    },
    orderBy: { id: 'desc' },
    include: {
      user: {
        select: {
          username: true,
        },
      },
    },
  });
}

  async getOne(id: number) {
    const offer = await this.prisma.offer.findUnique({
      where: { id },
      include: {
        items: true,
        extraItems: true,
      },
    });

    if (!offer) {
      return { offer: null, items: [], extraItems: [] };
    }

    return {
      offer,
      items: offer.items || [],
      extraItems: offer.extraItems || [],
    };
  }

  async create(data: any) {
    const datumPonude = data.datum ? new Date(data.datum) : new Date();
    const godina = datumPonude.getFullYear();
    const kratkaGodina = String(godina).slice(-2);

    const userId = Number(data.userId);

    
const vrstaPonude = String(data.vrsta_ponude || "").toLowerCase();

const prefix =
  vrstaPonude.includes("predračun") ||
  vrstaPonude.includes("predracun")
    ? "P"
    : "R";

    const lastOfferThisYear = await this.prisma.offer.findFirst({
      where: {
        userId,
        godinaPonude: godina,
        vrsta_ponude: data.vrsta_ponude,
      },
      orderBy: {
        redniBrojGodina: 'desc',
      },
    });

    const nextNumber = (lastOfferThisYear?.redniBrojGodina || 0) + 1;
    const brojPonude = `${prefix}-${nextNumber}/${kratkaGodina}`;

    const offer = await this.prisma.offer.create({
      data: {
        userId,
        brojPonude,
        godinaPonude: godina,
        redniBrojGodina: nextNumber,

        naziv: data.naziv,
        adresa: data.adresa,
        telefon: data.telefon,
        pib: data.pib,
        maticni: data.maticni,
        datum: data.datum,
        vrsta_ponude: data.vrsta_ponude,
        valuta: data.valuta,
        popust: data.popust,
        napomena: data.napomena,

        items: {
          create: (data.positions || []).map((p: any) => ({
            vrsta_stolarije: p.vrsta_stolarije,
            vrsta_prozora: p.vrsta_prozora,
            a: Number(p.a) || 0,
            b: Number(p.b) || 0,
            c: Number(p.c) || 0,
            d: Number(p.d) || 0,
            profil: String(p.profilId || p.profil || ''),
            ispuna: String(p.ispunaId || p.ispuna || ''),
            okov: String(p.okovId || p.okov || ''),
            otvaranje: p.otvaranje,
roletna: p.roletna,
vrsta_roletne: p.vrsta_roletne || "",
komarnik: p.komarnik,
            kolicina: Number(p.kolicina) || 1,
          })),
        },

        extraItems: {
          create: (data.extraItems || [])
            .filter((x: any) => x.naziv || Number(x.cena))
            .map((x: any) => ({
              naziv: x.naziv || '',
              kolicina: Number(x.kolicina) || 1,
              cena: Number(x.cena) || 0,
            })),
        },
      },
    });

    await this.audit.log(
      data.username || 'UNKNOWN',
      'CREATE_OFFER',
      `${offer.brojPonude} - ${offer.naziv}`,
      userId,
    );

    return offer;
  }

  async update(id: number, data: any) {
    const updated = await this.prisma.offer.update({
      where: { id },
      data: {
        userId: Number(data.userId),
        naziv: data.naziv,
        adresa: data.adresa,
        telefon: data.telefon,
        pib: data.pib,
        maticni: data.maticni,
        datum: data.datum,
        vrsta_ponude: data.vrsta_ponude,
        valuta: data.valuta,
        popust: data.popust,
        napomena: data.napomena,
      },
    });

    await this.prisma.offerItem.deleteMany({
      where: { offerId: id },
    });

    await this.prisma.offerExtraItem.deleteMany({
      where: { offerId: id },
    });

    await this.prisma.offerItem.createMany({
      data: (data.positions || []).map((p: any) => ({
        offerId: id,
        vrsta_stolarije: p.vrsta_stolarije,
        vrsta_prozora: p.vrsta_prozora,
        a: Number(p.a) || 0,
        b: Number(p.b) || 0,
        c: Number(p.c) || 0,
        d: Number(p.d) || 0,
        profil: String(p.profilId || p.profil || ''),
        ispuna: String(p.ispunaId || p.ispuna || ''),
        okov: String(p.okovId || p.okov || ''),
        otvaranje: p.otvaranje,
roletna: p.roletna,
vrsta_roletne: p.vrsta_roletne || "",
komarnik: p.komarnik,
        kolicina: Number(p.kolicina) || 1,
      })),
    });

    await this.prisma.offerExtraItem.createMany({
      data: (data.extraItems || [])
        .filter((x: any) => x.naziv || Number(x.cena))
        .map((x: any) => ({
          offerId: id,
          naziv: x.naziv || '',
          kolicina: Number(x.kolicina) || 1,
          cena: Number(x.cena) || 0,
        })),
    });

    await this.audit.log(
      data.username || 'UNKNOWN',
      'UPDATE_OFFER',
      `${updated.brojPonude} - ${updated.naziv}`,
      Number(data.userId),
    );

    return { id };
  }
}