import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma.service';

@Injectable()
export class InstructionService {
  constructor(private prisma: PrismaService) {}

  async getInstruction() {
    const existing = await this.prisma.instruction.findFirst({
      orderBy: {
        id: 'asc',
      },
    });

    if (existing) {
      return existing;
    }

    return this.prisma.instruction.create({
      data: {
        content: '',
      },
    });
  }

  async saveInstruction(content: string) {
    const existing = await this.prisma.instruction.findFirst({
      orderBy: {
        id: 'asc',
      },
    });

    if (existing) {
      return this.prisma.instruction.update({
        where: {
          id: existing.id,
        },
        data: {
          content,
        },
      });
    }

    return this.prisma.instruction.create({
      data: {
        content,
      },
    });
  }
}