import { Module } from '@nestjs/common';
import { SiteTranslationsController } from './site-translations.controller';
import { SiteTranslationsService } from './site-translations.service';
import { PrismaService } from '../prisma.service';
import { AuthModule } from '../auth/auth.module';


@Module({
  imports: [AuthModule],
  controllers: [SiteTranslationsController],
  providers: [SiteTranslationsService, PrismaService],
})
export class SiteTranslationsModule {}