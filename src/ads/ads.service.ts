import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma.service';

@Injectable()
export class AdsService {
  constructor(private prisma: PrismaService) {}

  getAll() {
    return this.prisma.adSetting.findMany({
      orderBy: { key: 'asc' },
    });
  }

  async saveMany(data: any[]) {
    if (!Array.isArray(data)) {
      return { success: false };
    }

    for (const item of data) {
      if (!item.key) continue;

      await this.prisma.adSetting.upsert({
        where: { key: item.key },
        update: { value: item.value || '' },
        create: {
          key: item.key,
          value: item.value || '',
        },
      });
    }

    return { success: true };
  }


async registerClick(adKey: string) {
  await this.prisma.adClick.create({
    data: { adKey },
  });

  return { success: true };
}

async getStats() {
  const clicks = await this.prisma.adClick.groupBy({
    by: ['adKey'],
    _count: {
      adKey: true,
    },
  });

  return clicks.map((x) => ({
    adKey: x.adKey,
    clicks: x._count.adKey,
  }));
}

async resetClicks(adKey: string) {
  await this.prisma.adClick.deleteMany({
    where: {
      adKey,
    },
  });

  return { success: true };
}



}