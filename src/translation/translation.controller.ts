import {
  Body,
  Controller,
  Get,
  Post,
  UseGuards,
} from '@nestjs/common';

import { JwtAuthGuard } from '../auth/jwt-auth.guard';

import { TranslationService } from './translation.service';

// @UseGuards(JwtAuthGuard)
@Controller('translation')
export class TranslationController {

  constructor(
    private service: TranslationService,
  ) {}

  @Get('languages')
  getLanguages() {
    return this.service.getLanguages();
  }

  @Post('languages')
  saveLanguages(
    @Body() body: any[],
  ) {
    return this.service.saveLanguages(
      body,
    );
  }

  @Get()
  getTranslations() {
    return this.service.getTranslations();
  }

  @Post()
  saveTranslations(
    @Body() body: any[],
  ) {
    return this.service.saveTranslations(
      body,
    );
  }
}