import { Module } from '@nestjs/common';
import { JwtModule } from '@nestjs/jwt';
import { DodatniElementController } from './dodatni-element.controller';
import { DodatniElementService } from './dodatni-element.service';
import { PrismaService } from '../prisma.service';

@Module({
  imports: [JwtModule],
  controllers: [DodatniElementController],
  providers: [DodatniElementService, PrismaService],
})
export class DodatniElementModule {}