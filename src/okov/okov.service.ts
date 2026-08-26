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

  for (let i = 0; i < data.length; i++) {
    const item = data[i];

    if (item.id) {
      await this.prisma.okov.update({
        where: {
          id: Number(item.id),
        },
        data: {
          naziv: item.naziv || `Okov ${i + 1}`,
          cena: Number(item.cena) || 0,
        },
      });
    } else {
      await this.prisma.okov.create({
        data: {
          userId,
          naziv: item.naziv || `Okov ${i + 1}`,
          cena: Number(item.cena) || 0,
        },
      });
    }
  }

  return { success: true };
}

}