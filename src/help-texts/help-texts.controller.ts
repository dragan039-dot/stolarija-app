import { Body, Controller, Get, Post, UseGuards } from '@nestjs/common';
import { HelpTextsService } from './help-texts.service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';

@UseGuards(JwtAuthGuard)
@Controller('help-texts')
export class HelpTextsController {
  constructor(private service: HelpTextsService) {}

  @Get()
  getAll() {
    return this.service.getAll();
  }

  @Post()
  saveMany(@Body() body: any[]) {
    return this.service.saveMany(body);
  }
}