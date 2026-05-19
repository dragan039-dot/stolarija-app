import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma.service';

@Injectable()
export class HelpTextsService {
  constructor(private prisma: PrismaService) {}

  getAll() {
    return this.prisma.helpText.findMany({
      orderBy: {
        fieldName: 'asc',
      },
    });
  }

  async saveMany(data: any[]) {
    if (!Array.isArray(data)) {
      return { success: false };
    }

    for (const item of data) {
      if (!item.fieldName) continue;

      await this.prisma.helpText.upsert({
        where: {
          fieldName: item.fieldName,
        },
        update: {
          text: item.text || '',
        },
        create: {
          fieldName: item.fieldName,
          text: item.text || '',
        },
      });
    }

    return { success: true };
  }
}