import {
  Controller,
  Get,
  Put,
  Delete,
  Param,
  Body,
  UseGuards,
} from '@nestjs/common';

import { ParamsService } from './params.service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';

@UseGuards(JwtAuthGuard)
@Controller('params')
export class ParamsController {
  constructor(private readonly service: ParamsService) {}

  @Get('profiles')
  getProfiles() {
    return this.service.getProfiles();
  }

  @Put('profiles/:id')
  updateProfile(@Param('id') id: string, @Body() body: any) {
    return this.service.updateProfile(Number(id), body);
  }

  @Delete('profiles/:id')
  deleteProfile(@Param('id') id: string) {
    return this.service.deleteProfile(Number(id));
  }
}