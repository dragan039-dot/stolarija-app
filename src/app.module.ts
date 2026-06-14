import { JwtModule } from '@nestjs/jwt';
import { Module } from '@nestjs/common';
import { HelpTextsModule } from './help-texts/help-texts.module';
import { OffersModule } from './offers/offers.module';
import { ParamsModule } from './params/params.module';
import { SettingsController } from './settings/settings.controller';
import { PrismaService } from './prisma.service';
import { ProfileModule } from './profile/profile.module'; // ✅ DODAJ
import { IspunaModule } from './ispuna/ispuna.module';
import { OkovModule } from './okov/okov.module';
import { AuthModule } from './auth/auth.module';
import { BackupModule } from './backup/backup.module';
import { AuditModule } from './audit/audit.module';
import { ThrottlerModule } from '@nestjs/throttler';
import { AdsModule } from './ads/ads.module';
import { InstructionModule } from './instruction/instruction.module';
import { TranslationModule } from './translation/translation.module';
import { RoletnaModule } from './roletna/roletna.module';
import { KomarnikModule } from './komarnik/komarnik.module';
import { DodatniElementModule } from './dodatni-element/dodatni-element.module';
import { SiteRequestsModule } from './site-requests/site-requests.module';
import { SiteTranslationsModule } from './site-translations/site-translations.module';
import { LanguagesController } from './languages.controller';


@Module({
  imports: [
  RoletnaModule,
  KomarnikModule,
  TranslationModule,
  InstructionModule,
  AdsModule,
SiteRequestsModule,
SiteTranslationsModule,
HelpTextsModule,
DodatniElementModule,
ThrottlerModule.forRoot([
  {
    ttl: 90000,
    limit: 5,
  },
]),

JwtModule.register({
  secret: process.env.JWT_SECRET || 'dev-secret',
  signOptions: {
    expiresIn: 60 * 60 * 24 * 7,
  },
}),

    AuthModule,
    OffersModule,
    ParamsModule,
    IspunaModule,
    OkovModule,
    ProfileModule,   // ✅ SAMO OVDE
    BackupModule,
    AuditModule
  ],
  controllers: [
    SettingsController,
    LanguagesController
  ],
  providers: [
    PrismaService
  ],

})
export class AppModule {}



