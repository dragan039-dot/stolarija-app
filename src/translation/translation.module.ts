import { Module } from '@nestjs/common';
import { JwtModule } from '@nestjs/jwt';

import { TranslationController } from './translation.controller';
import { TranslationService } from './translation.service';
import { PrismaService } from '../prisma.service';

@Module({
  imports: [
    JwtModule,
  ],

  controllers: [
    TranslationController,
  ],

  providers: [
    TranslationService,
    PrismaService,
  ],
})
export class TranslationModule {}