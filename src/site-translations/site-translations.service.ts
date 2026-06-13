import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma.service';

@Injectable()
export class SiteTranslationsService {
  constructor(private prisma: PrismaService) {}

  getAll() {
    return this.prisma.siteTranslation.findMany({
      include: {
        language: true,
      },
      orderBy: {
        key: 'asc',
      },
    });
  }

  async save(data: any[]) {
    for (const item of data) {
      await this.prisma.siteTranslation.upsert({
        where: {
          key_languageId: {
            key: item.key,
            languageId: Number(item.languageId),
          },
        },
        update: {
          value: item.value || '',
        },
        create: {
          key: item.key,
          languageId: Number(item.languageId),
          value: item.value || '',
        },
      });
    }

    return { success: true };
  }
}