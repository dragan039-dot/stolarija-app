import { Module } from '@nestjs/common';
import { JwtModule } from '@nestjs/jwt';
import { IspunaController } from './ispuna.controller';
import { IspunaService } from './ispuna.service';
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
  controllers: [IspunaController],
  providers: [IspunaService, PrismaService],
})
export class IspunaModule {}