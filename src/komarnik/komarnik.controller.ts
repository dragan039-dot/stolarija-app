import { Body, Controller, Get, Post, Query, UseGuards } from '@nestjs/common';
import { KomarnikService } from './komarnik.service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';

@UseGuards(JwtAuthGuard)
@Controller('komarnik')
export class KomarnikController {
  constructor(private service: KomarnikService) {}

  @Get()
  getAll(@Query('userId') userId: string) {
    return this.service.getAll(Number(userId));
  }

  @Post()
  saveMany(@Body() body: any[]) {
    return this.service.saveMany(body);
  }
}