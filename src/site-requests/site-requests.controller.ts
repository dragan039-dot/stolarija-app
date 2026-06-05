import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  Post,
Put,
  Req,
  UseGuards,
} from '@nestjs/common';
import { SiteRequestsService } from './site-requests.service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';

@Controller('site-requests')
export class SiteRequestsController {
  constructor(private service: SiteRequestsService) {}

  @Post()
  create(@Body() body: any, @Req() req: any) {
    const ip =
      req.headers['x-forwarded-for']?.split(',')[0] ||
      req.socket?.remoteAddress ||
      '';

    return this.service.create(body, ip);
  }

  @UseGuards(JwtAuthGuard)
  @Get()
  getAll() {
    return this.service.getAll();
  }

  @UseGuards(JwtAuthGuard)

@Put(':id')
update(@Param('id') id: string, @Body() body: any) {
  return this.service.update(Number(id), body);
}

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.service.remove(Number(id));
  }
}