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

}