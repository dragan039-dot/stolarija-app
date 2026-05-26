import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma.service';

@Injectable()
export class DodatniElementService {
  constructor(private prisma: PrismaService) {}

  getAll(userId: number) {
    return this.prisma.dodatniElement.findMany({
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
        await this.prisma.dodatniElement.update({
          where: { id: Number(item.id) },
          data: payload,
        });
      } else {
        await this.prisma.dodatniElement.create({
          data: payload,
        });
      }
    }

    return { success: true };
  }
}