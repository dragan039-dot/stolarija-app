import { Module } from '@nestjs/common';
import { JwtModule } from '@nestjs/jwt';
import { RoletnaController } from './roletna.controller';
import { RoletnaService } from './roletna.service';
import { PrismaService } from '../prisma.service';

@Module({
  imports: [JwtModule],
  controllers: [RoletnaController],
  providers: [RoletnaService, PrismaService],
})
export class RoletnaModule {}