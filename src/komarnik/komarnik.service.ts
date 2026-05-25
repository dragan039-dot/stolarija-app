import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma.service';

@Injectable()
export class KomarnikService {
  constructor(private prisma: PrismaService) {}

  getAll(userId: number) {
    return this.prisma.komarnik.findMany({
      where: { userId },
      orderBy: { id: 'asc' },
    });
  }

  async saveMany(data: any[]) {
    if (!Array.isArray(data)) {
      return { success: false };
    }

    for (const item of data) {
      const payload = {
        userId: Number(item.userId),
        naziv: item.naziv || '',
        cena: Number(item.cena) || 0,
      };

      if (item.id) {
        await this.prisma.komarnik.update({
          where: { id: Number(item.id) },
          data: payload,
        });
      } else {
        await this.prisma.komarnik.create({
          data: payload,
        });
      }
    }

    return { success: true };
  }
}