import { Module } from '@nestjs/common';
import { JwtModule } from '@nestjs/jwt';
import { SiteRequestsController } from './site-requests.controller';
import { SiteRequestsService } from './site-requests.service';
import { PrismaService } from '../prisma.service';
import { MailService } from '../mail/mail.service';

@Module({
  imports: [JwtModule],
  controllers: [SiteRequestsController],
  providers: [SiteRequestsService, PrismaService, MailService],
})
export class SiteRequestsModule {}