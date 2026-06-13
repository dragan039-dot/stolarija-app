import { Body, Controller, Get, Post, UseGuards } from '@nestjs/common';
import { SiteTranslationsService } from './site-translations.service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';

@Controller('site-translations')
export class SiteTranslationsController {
  constructor(private service: SiteTranslationsService) {}

  @Get()
  getAll() {
    return this.service.getAll();
  }

  @UseGuards(JwtAuthGuard)
  @Post('save')
  save(@Body() body: any[]) {
    return this.service.save(Array.isArray(body) ? body : []);
  }
}