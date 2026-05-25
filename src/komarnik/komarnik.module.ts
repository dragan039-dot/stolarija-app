import { Module } from '@nestjs/common';
import { JwtModule } from '@nestjs/jwt';
import { KomarnikController } from './komarnik.controller';
import { KomarnikService } from './komarnik.service';
import { PrismaService } from '../prisma.service';

@Module({
  imports: [JwtModule],
  controllers: [KomarnikController],
  providers: [KomarnikService, PrismaService],
})
export class KomarnikModule {}