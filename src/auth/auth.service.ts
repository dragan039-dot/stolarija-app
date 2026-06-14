import {
  Injectable,
  UnauthorizedException,
  BadRequestException,
} from '@nestjs/common';
import { PrismaService } from '../prisma.service';
import * as bcrypt from 'bcrypt';
import { AuditService } from '../audit/audit.service';
import { JwtService } from '@nestjs/jwt';

@Injectable()
export class AuthService {
  constructor(
    private prisma: PrismaService,
    private audit: AuditService,
    private jwt: JwtService,
  ) {}

  async createFirstAdmin() {
    const exists = await this.prisma.user.findFirst({
      where: { role: 'ADMIN' },
    });

    if (exists) {
      return { message: 'Admin već postoji' };
    }

    const hashedPassword = await bcrypt.hash('admin123', 10);

    const admin = await this.prisma.user.create({
      data: {
        username: 'admin',
        password: hashedPassword,
        role: 'ADMIN',
        isActive: true,
        maxDevices: 5,
      },
    });

    await this.audit.log(
      'SYSTEM',
      'CREATE_FIRST_ADMIN',
      `Kreiran admin: ${admin.username}`,
      admin.id,
    );

    return {
      message: 'Admin kreiran',
      username: admin.username,
      password: 'admin123',
    };
  }

  async login(data: any) {
    const user = await this.prisma.user.findUnique({
      where: { username: data.username },
    });

    if (!user) {
      throw new UnauthorizedException('Pogrešno korisničko ime ili šifra');
    }

    if (!user.isActive) {
      throw new UnauthorizedException('Korisnik nije aktivan');
    }

    if (user.licenseEnd && new Date(user.licenseEnd) < new Date()) {
      throw new UnauthorizedException(
        'Licenca je istekla. Kontaktirajte administratora.',
      );
    }

    const ok = await bcrypt.compare(data.password, user.password);

    if (!ok) {
      throw new UnauthorizedException('Pogrešno korisničko ime ili šifra');
    }

    const fingerprint = data.fingerprint || '';

    const existingDevice = await this.prisma.userDevice.findFirst({
      where: {
        userId: user.id,
        fingerprint,
      },
    });

    if (!existingDevice) {
      const deviceCount = await this.prisma.userDevice.count({
        where: {
          userId: user.id,
        },
      });

      if (deviceCount >= user.maxDevices) {
        throw new UnauthorizedException(
          'Dostignut maksimalan broj uređaja za prijavu.',
        );
      }

      await this.prisma.userDevice.create({
        data: {
          userId: user.id,
          fingerprint,
        },
      });
    }

    await this.audit.log(user.username, 'LOGIN', 'Uspešna prijava', user.id);

    const token = await this.jwt.signAsync({
      id: user.id,
      username: user.username,
      role: user.role,
    });

    return {
      token,
      user: {
  id: user.id,
  username: user.username,
  role: user.role,
  isActive: user.isActive,
  licenseEnd: user.licenseEnd,
  maxDevices: user.maxDevices,

  defaultLanguageId:
    user.defaultLanguageId,
},
    };
  }

async getUsers() {
  return this.prisma.user.findMany({
    where: {
      deleted: false,
    },
    orderBy: { id: 'asc' },
    select: {
      id: true,
      username: true,
      role: true,
      isActive: true,
      licenseStart: true,
      licenseEnd: true,
      maxDevices: true,
      createdAt: true,
      
      defaultLanguageId: true,
    },
  });
}

  async createUser(data: any) {
    if (!data.username || !data.username.trim()) {
      throw new BadRequestException('Unesite korisničko ime');
    }

    const exists = await this.prisma.user.findUnique({
      where: { username: data.username.trim() },
    });

    if (exists) {
      throw new BadRequestException('Korisničko ime već postoji');
    }

    const hashedPassword = await bcrypt.hash(data.password || '123456', 10);

    const created = await this.prisma.user.create({
      data: {
        username: data.username.trim(),
        password: hashedPassword,
        role: data.role || 'USER',
        isActive: data.isActive ?? true,
        licenseStart: data.licenseStart ? new Date(data.licenseStart) : null,
        licenseEnd: data.licenseEnd ? new Date(data.licenseEnd) : null,
        maxDevices: Number(data.maxDevices) || 1,


defaultLanguageId:
  data.defaultLanguageId
    ? Number(data.defaultLanguageId)
    : null,

      },
      select: {
        id: true,
        username: true,
        role: true,
        isActive: true,
        licenseStart: true,
        licenseEnd: true,
        maxDevices: true,

        defaultLanguageId: true,
      },
    });

    await this.audit.log(
      'ADMIN',
      'CREATE_USER',
      `Kreiran korisnik: ${created.username}`,
      created.id,
    );

    return created;
  }

  async changePassword(data: any) {
    const user = await this.prisma.user.findUnique({
      where: { id: Number(data.userId) },
    });

    if (!user) {
      throw new BadRequestException('Korisnik ne postoji');
    }

    const ok = await bcrypt.compare(data.oldPassword, user.password);

    if (!ok) {
      throw new BadRequestException('Stara šifra nije tačna');
    }

    const hashed = await bcrypt.hash(data.newPassword, 10);

    await this.prisma.user.update({
      where: { id: user.id },
      data: { password: hashed },
    });

    await this.audit.log(
      user.username,
      'CHANGE_PASSWORD',
      'Korisnik promenio svoju šifru',
      user.id,
    );

    return { success: true };
  }

  async adminChangePassword(data: any) {
    const hashed = await bcrypt.hash(data.password, 10);

    const updated = await this.prisma.user.update({
      where: { id: Number(data.userId) },
      data: { password: hashed },
    });

    await this.audit.log(
      'ADMIN',
      'ADMIN_CHANGE_PASSWORD',
      `Promenjena šifra korisniku: ${updated.username}`,
      updated.id,
    );

    return { success: true };
  }

async deleteUser(id: number) {
  const user = await this.prisma.user.findUnique({
    where: { id },
  });

  await this.prisma.user.update({
    where: { id },
    data: {
      deleted: true,
      isActive: false,
    },
  });

  await this.audit.log(
    'ADMIN',
    'SOFT_DELETE_USER',
    `Arhiviran korisnik: ${user?.username || id}`,
    id,
  );

  return { success: true };
}

  async getUserDevices(userId: number) {
    return this.prisma.userDevice.findMany({
      where: { userId },
      orderBy: { createdAt: 'desc' },
    });
  }

  async deleteUserDevice(id: number) {
    const device = await this.prisma.userDevice.findUnique({
      where: { id },
    });

    await this.prisma.userDevice.delete({
      where: { id },
    });

    await this.audit.log(
      'ADMIN',
      'DELETE_DEVICE',
      `Obrisan uređaj ID: ${id}`,
      device?.userId,
    );

    return { success: true };
  }

  async deleteAllUserDevices(userId: number) {
    await this.prisma.userDevice.deleteMany({
      where: { userId },
    });

    await this.audit.log(
      'ADMIN',
      'DELETE_ALL_DEVICES',
      `Obrisani svi uređaji korisniku ID: ${userId}`,
      userId,
    );

    return { success: true };
  }

  async updateUser(data: any) {
    const updated = await this.prisma.user.update({
      where: {
        id: Number(data.id),
      },
      data: {
        role: data.role,
        isActive: Boolean(data.isActive),
        licenseEnd: data.licenseEnd ? new Date(data.licenseEnd) : null,
        maxDevices: Number(data.maxDevices) || 1,


defaultLanguageId:
  data.defaultLanguageId
    ? Number(data.defaultLanguageId)
    : null,

      },
      select: {
        id: true,
        username: true,
        role: true,
        isActive: true,
        licenseEnd: true,
        maxDevices: true,

        defaultLanguageId: true,
      },
    });

    await this.audit.log(
      'ADMIN',
      'UPDATE_USER',
      `Izmenjen korisnik: ${updated.username}`,
      updated.id,
    );

    return updated;
  }

async getArchivedUsers() {
  return this.prisma.user.findMany({
    where: {
      deleted: true,
    },
    orderBy: { id: 'asc' },
    select: {
      id: true,
      username: true,
      role: true,
      isActive: true,
      licenseStart: true,
      licenseEnd: true,
      maxDevices: true,
      createdAt: true,
    },
  });
}


async restoreUser(id: number) {
  const user = await this.prisma.user.update({
    where: { id },
    data: {
      deleted: false,
      isActive: true,
    },
  });

  await this.audit.log(
    'ADMIN',
    'RESTORE_USER',
    `Vraćen korisnik: ${user.username}`,
    id,
  );

  return { success: true };
}



async copyDemoDataToUser(targetUserId: number) {
  const demoUser = await this.prisma.user.findUnique({
    where: { username: 'DEMO' },
  });

  if (!demoUser) {
    throw new BadRequestException('DEMO korisnik ne postoji');
  }

  if (demoUser.id === targetUserId) {
    throw new BadRequestException('Ne možete kopirati DEMO podatke u DEMO korisnika');
  }

  const targetUser = await this.prisma.user.findUnique({
    where: { id: targetUserId },
  });

  if (!targetUser) {
    throw new BadRequestException('Korisnik ne postoji');
  }

  await this.prisma.$transaction(async (tx) => {
    // 1. Brisanje starih ponuda korisnika
    const oldOffers = await tx.offer.findMany({
      where: { userId: targetUserId },
      select: { id: true },
    });

    const oldOfferIds = oldOffers.map((x) => x.id);

    if (oldOfferIds.length > 0) {
      await tx.offerExtraItem.deleteMany({
        where: { offerId: { in: oldOfferIds } },
      });

      await tx.offerItem.deleteMany({
        where: { offerId: { in: oldOfferIds } },
      });

      await tx.offer.deleteMany({
        where: { userId: targetUserId },
      });
    }

    // 2. Brisanje starih parametara i cena korisnika
    await tx.profilePrice.deleteMany({ where: { userId: targetUserId } });
    await tx.profileTehnicki.deleteMany({ where: { userId: targetUserId } });
    await tx.okov.deleteMany({ where: { userId: targetUserId } });
    await tx.ispuna.deleteMany({ where: { userId: targetUserId } });
    await tx.profil.deleteMany({ where: { userId: targetUserId } });
    await tx.valuta.deleteMany({ where: { userId: targetUserId } });
    await tx.setting.deleteMany({ where: { userId: targetUserId } });
    await tx.roletna.deleteMany({ where: { userId: targetUserId } });
    await tx.komarnik.deleteMany({ where: { userId: targetUserId } });
    await tx.dodatniElement.deleteMany({ where: { userId: targetUserId } });

    // 3. Učitavanje DEMO podataka
    const prices = await tx.profilePrice.findMany({ where: { userId: demoUser.id } });
    const tehnicki = await tx.profileTehnicki.findMany({ where: { userId: demoUser.id } });
    const okovi = await tx.okov.findMany({ where: { userId: demoUser.id } });
    const ispune = await tx.ispuna.findMany({ where: { userId: demoUser.id } });
    const profili = await tx.profil.findMany({ where: { userId: demoUser.id } });
    const valute = await tx.valuta.findMany({ where: { userId: demoUser.id } });
    const settings = await tx.setting.findMany({ where: { userId: demoUser.id } });
    const roletne = await tx.roletna.findMany({ where: { userId: demoUser.id } });
    const komarnici = await tx.komarnik.findMany({ where: { userId: demoUser.id } });
    const dodatniElementi = await tx.dodatniElement.findMany({ where: { userId: demoUser.id } });

    // 4. Kopiranje parametara i cena kod novog korisnika
    if (prices.length > 0) {
      await tx.profilePrice.createMany({
        data: prices.map(({ id, ...x }) => ({
          ...x,
          userId: targetUserId,
        })),
      });
    }

    if (tehnicki.length > 0) {
      await tx.profileTehnicki.createMany({
        data: tehnicki.map(({ id, ...x }) => ({
          ...x,
          userId: targetUserId,
        })),
      });
    }

    if (okovi.length > 0) {
      await tx.okov.createMany({
        data: okovi.map(({ id, ...x }) => ({
          ...x,
          userId: targetUserId,
        })),
      });
    }

    if (ispune.length > 0) {
      await tx.ispuna.createMany({
        data: ispune.map(({ id, ...x }) => ({
          ...x,
          userId: targetUserId,
        })),
      });
    }

    if (profili.length > 0) {
      await tx.profil.createMany({
        data: profili.map(({ id, ...x }) => ({
          ...x,
          userId: targetUserId,
        })),
      });
    }

    if (valute.length > 0) {
      await tx.valuta.createMany({
        data: valute.map(({ id, ...x }) => ({
          ...x,
          userId: targetUserId,
        })),
      });
    }

    if (settings.length > 0) {
      await tx.setting.createMany({
        data: settings.map(({ id, ...x }) => ({
          ...x,
          userId: targetUserId,
        })),
      });
    }

    if (roletne.length > 0) {
      await tx.roletna.createMany({
        data: roletne.map(({ id, ...x }) => ({
          ...x,
          userId: targetUserId,
        })),
      });
    }

    if (komarnici.length > 0) {
      await tx.komarnik.createMany({
        data: komarnici.map(({ id, ...x }) => ({
          ...x,
          userId: targetUserId,
        })),
      });
    }

    if (dodatniElementi.length > 0) {
      await tx.dodatniElement.createMany({
        data: dodatniElementi.map(({ id, ...x }) => ({
          ...x,
          userId: targetUserId,
        })),
      });
    }

    // 5. Kopiranje DEMO ponuda
    const demoOffers = await tx.offer.findMany({
      where: {
        userId: demoUser.id,
        deleted: false,
      },
      include: {
        items: true,
        extraItems: true,
      },
      orderBy: {
        id: 'asc',
      },
    });

    for (const offer of demoOffers) {
      const { id, items, extraItems, ...offerData } = offer;

      const newOffer = await tx.offer.create({
        data: {
          ...offerData,
          userId: targetUserId,
          deleted: false,
        },
      });

      if (items.length > 0) {
        await tx.offerItem.createMany({
          data: items.map(({ id, offerId, ...item }) => ({
            ...item,
            offerId: newOffer.id,
          })),
        });
      }

      if (extraItems.length > 0) {
        await tx.offerExtraItem.createMany({
          data: extraItems.map(({ id, offerId, ...item }) => ({
            ...item,
            offerId: newOffer.id,
          })),
        });
      }
    }
  });

  await this.audit.log(
    'ADMIN',
    'COPY_DEMO_DATA',
    `Kopirani DEMO podaci korisniku: ${targetUser.username}`,
    targetUserId,
  );

  return { success: true };
}



}