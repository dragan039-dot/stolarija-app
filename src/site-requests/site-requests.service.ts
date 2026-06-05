import { Injectable, BadRequestException } from '@nestjs/common';
import { PrismaService } from '../prisma.service';
import { MailService } from '../mail/mail.service';

@Injectable()
export class SiteRequestsService {
  constructor(
  private prisma: PrismaService,
  private mail: MailService,
) {}

  async create(data: any = {}, ip?: string) {

    if (data.website) {
      return { success: true };
    }

    if (!data.firma || !data.telefon) {
      throw new BadRequestException('Firma i telefon su obavezni');
    }

    const fiveMinutesAgo = new Date(Date.now() - 5 * 60 * 1000);

    const recent = await this.prisma.siteRequest.findFirst({
      where: {
        ip: ip || '',
        createdAt: {
          gte: fiveMinutesAgo,
        },
      },
    });

    if (recent) {
      throw new BadRequestException(
        'Zahtev je već poslat. Pokušajte kasnije.',
      );
    }

    const created = await this.prisma.siteRequest.create({
  data: {
        firma: data.firma || '',
        pib: data.pib || '',
        kontaktOsoba: data.kontaktOsoba || '',
        telefon: data.telefon || '',
        email: data.email || '',
        brojKorisnika: data.brojKorisnika || '',
        poruka: data.poruka || '',
        ip: ip || '',
      },
    });
this.mail
  .sendSiteRequestEmail(created)
  .catch((err) => {
    console.error('SITE REQUEST EMAIL ERROR:', err);
  });

return {
  success: true,
  request: created,
};
  }

  getAll() {
    return this.prisma.siteRequest.findMany({
      where: {
        deleted: false,
      },
      orderBy: {
        createdAt: 'desc',
      },
    });
  }

async update(id: number, data: any) {
  return this.prisma.siteRequest.update({
    where: { id },
    data: {
      status: data.status || "Novi",
      adminNapomena: data.adminNapomena || "",
    },
  });
}

  async remove(id: number) {
    await this.prisma.siteRequest.update({
      where: { id },
      data: { deleted: true },
    });

    return { success: true };
  }
}