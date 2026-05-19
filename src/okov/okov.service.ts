import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma.service';

@Injectable()
export class OkovService {
  constructor(private prisma: PrismaService) {}

  async getAll(userId: number) {
    return this.prisma.okov.findMany({
      where: {
        userId,
      },
      orderBy: {
        id: 'asc',
      },
    });
  }

  async save(data: any[]) {
    if (!Array.isArray(data) || data.length === 0) {
      return { success: true };
    }

    const userId = Number(data[0].userId);

    await this.prisma.okov.deleteMany({
      where: {
        userId,
      },
    });

    for (let i = 0; i < data.length; i++) {
      const item = data[i];

      await this.prisma.okov.create({
        data: {
          userId,

          naziv: item.naziv || `Okov ${i + 1}`,
          cena: Number(item.cena) || 0,
        },
      });
    }

    return { success: true };
  }
}