import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma.service';

@Injectable()
export class HelpTextsService {
  constructor(private prisma: PrismaService) {}

  async getAll() {
    return this.prisma.helpText.findMany({
      orderBy: {
        fieldName: 'asc',
      },
      include: {
        language: true,
      },
    });
  }

  async saveMany(data: any[]) {
    if (!Array.isArray(data)) {
      return { success: false };
    }

    for (const item of data) {
      if (!item.fieldName) continue;

      const languageId =
        item.languageId === null ||
        item.languageId === undefined ||
        item.languageId === ''
          ? null
          : Number(item.languageId);

      const existing = await this.prisma.helpText.findFirst({
        where: {
          fieldName: item.fieldName,
          languageId: languageId,
        },
      });

      if (existing) {
        await this.prisma.helpText.update({
          where: {
            id: existing.id,
          },
          data: {
            text: item.text || '',
          },
        });
      } else {
        await this.prisma.helpText.create({
          data: {
            fieldName: item.fieldName,
            text: item.text || '',
            languageId: languageId,
          },
        });
      }
    }

    return {
      success: true,
    };
  }
}