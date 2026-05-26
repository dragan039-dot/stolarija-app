import { Body, Controller, Get, Post, Query, UseGuards } from '@nestjs/common';
import { DodatniElementService } from './dodatni-element.service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';

@UseGuards(JwtAuthGuard)
@Controller('dodatni-element')
export class DodatniElementController {
  constructor(private service: DodatniElementService) {}

  @Get()
  getAll(@Query('userId') userId: string) {
    return this.service.getAll(Number(userId));
  }

  @Post()
  saveMany(@Body() body: any[]) {
    return this.service.saveMany(body);
  }
}