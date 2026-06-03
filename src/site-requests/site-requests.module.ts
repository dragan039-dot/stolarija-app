import { Module } from '@nestjs/common';
import { JwtModule } from '@nestjs/jwt';
import { SiteRequestsController } from './site-requests.controller';
import { SiteRequestsService } from './site-requests.service';
import { PrismaService } from '../prisma.service';

@Module({
  imports: [JwtModule],
  controllers: [SiteRequestsController],
  providers: [SiteRequestsService, PrismaService],
})
export class SiteRequestsModule {}