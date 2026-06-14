import { Module } from '@nestjs/common';
import { JwtModule } from '@nestjs/jwt';
import { SiteTranslationsController } from './site-translations.controller';
import { SiteTranslationsService } from './site-translations.service';
import { PrismaService } from '../prisma.service';
import { AuthModule } from '../auth/auth.module';



@Module({
  imports: [
    JwtModule.register({
      secret: process.env.JWT_SECRET || 'tajni-kljuc',
      signOptions: { expiresIn: '7d' },
    }),
  ],
  controllers: [SiteTranslationsController],
  providers: [SiteTranslationsService, PrismaService],
})
export class SiteTranslationsModule {}