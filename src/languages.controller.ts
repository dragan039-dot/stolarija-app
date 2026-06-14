import { Controller, Get } from '@nestjs/common';
import { PrismaService } from './prisma.service';

@Controller('languages')
export class LanguagesController {
  constructor(private prisma: PrismaService) {}

  @Get()
  getAll() {
    return this.prisma.language.findMany({
      orderBy: {
        id: 'asc',
      },
    });
  }
}