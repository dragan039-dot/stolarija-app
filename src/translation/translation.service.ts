import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma.service';

@Injectable()
export class TranslationService {
  constructor(
    private prisma: PrismaService,
  ) {}

  async getLanguages() {
    return this.prisma.language.findMany({
      orderBy: {
        sortOrder: 'asc',
      },
    });
  }

  async saveLanguages(data: any[]) {
  for (const item of data) {
    const cleanData = {
      code: item.code || item.name || 'LANG',
      name: item.name || item.code || 'Jezik',
      enabled: Boolean(item.enabled),
      sortOrder: Number(item.sortOrder) || 0,
    };

    if (item.id) {
      await this.prisma.language.update({
        where: { id: Number(item.id) },
        data: cleanData,
      });
    } else {
      await this.prisma.language.create({
        data: cleanData,
      });
    }
  }

  return { success: true };
}

  async getTranslations() {
    return this.prisma.translation.findMany({
      include: {
        language: true,
      },
    });
  }

  async saveTranslations(
    data: any[],
  ) {
    for (const item of data) {

      const existing =
        await this.prisma.translation.findFirst({
          where: {
            key: item.key,
            languageId:
              item.languageId,
          },
        });

      if (existing) {
        await this.prisma.translation.update({
          where: {
            id: existing.id,
          },
          data: {
            value:
              item.value,
          },
        });
      } else {
        await this.prisma.translation.create({
          data: item,
        });
      }
    }

    return {
      success: true,
    };
  }
}