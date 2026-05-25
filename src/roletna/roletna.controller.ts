import { Body, Controller, Get, Post, Query, UseGuards } from '@nestjs/common';
import { RoletnaService } from './roletna.service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';

@UseGuards(JwtAuthGuard)
@Controller('roletna')
export class RoletnaController {
  constructor(private service: RoletnaService) {}

  @Get()
  getAll(@Query('userId') userId: string) {
    return this.service.getAll(Number(userId));
  }

  @Post()
  saveMany(@Body() body: any[]) {
    return this.service.saveMany(body);
  }
}