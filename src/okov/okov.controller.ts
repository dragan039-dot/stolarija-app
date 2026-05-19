import { Body, Controller, Get, Post, Query, UseGuards } from '@nestjs/common';
import { OkovService } from './okov.service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';

@UseGuards(JwtAuthGuard)
@Controller('okov')
export class OkovController {
  constructor(private service: OkovService) {}

  @Get()
  getAll(@Query('userId') userId: string) {
    return this.service.getAll(Number(userId));
  }

  @Post()
  save(@Body() body: any[]) {
    return this.service.save(body);
  }
}