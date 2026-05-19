import { Module } from '@nestjs/common';
import { JwtModule } from '@nestjs/jwt';
import { AdsController } from './ads.controller';
import { AdsService } from './ads.service';
import { PrismaService } from '../prisma.service';

@Module({
  imports: [
    JwtModule.register({
      secret: process.env.JWT_SECRET || 'dev-secret',
      signOptions: {
        expiresIn: 60 * 60 * 24 * 7,
      },
    }),
  ],
  controllers: [AdsController],
  providers: [AdsService, PrismaService],
})
export class AdsModule {}