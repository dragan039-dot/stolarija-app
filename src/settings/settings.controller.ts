import { Body, Controller, Get, Post, Query, UseGuards } from '@nestjs/common';
import { PrismaService } from '../prisma.service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';

@UseGuards(JwtAuthGuard)
@Controller('settings')
export class SettingsController {
  constructor(private prisma: PrismaService) {}

  @Get()
  async getSettings(@Query('userId') userId: string) {
    const settings = await this.prisma.setting.findMany({
      where: {
        userId: Number(userId),
      },
    });

    const result: any = {};

    settings.forEach((s) => {
      result[s.key] = s.value;
    });

    return result;
  }

  @Post()
  async saveSettings(@Body() body: any) {
    const userId = Number(body.userId);

    for (const key of Object.keys(body)) {
      if (key === 'userId') continue;

      const value = body[key];

      await this.prisma.setting.upsert({
        where: {
          userId_key: {
            userId,
            key,
          },
        },
        update: {
          value: String(value),
        },
        create: {
          userId,
          key,
          value: String(value),
        },
      });
    }

    return { success: true };
  }
}