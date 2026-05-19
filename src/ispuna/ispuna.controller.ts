import { Body, Controller, Get, Post, Query, UseGuards } from '@nestjs/common';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { IspunaService } from './ispuna.service';

@UseGuards(JwtAuthGuard)
@Controller('ispuna')
export class IspunaController {
  constructor(private service: IspunaService) {}

  @Get()
  getAll(@Query('userId') userId: string) {
    return this.service.getAll(Number(userId));
  }

  @Post()
  save(@Body() body: any[]) {
    return this.service.save(body);
  }
}