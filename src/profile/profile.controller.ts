import {
  Body,
  Controller,
  Get,
  Post,
  Query,
  UseGuards,
} from '@nestjs/common';

import { ProfileService } from './profile.service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';

@UseGuards(JwtAuthGuard)
@Controller('profile')
export class ProfileController {
  constructor(private service: ProfileService) {}

  @Get('params')
  getParams() {
    return this.service.getParams();
  }

  @Post('params')
  saveParam(@Body() body: any) {
    return this.service.saveParam(body);
  }

  @Get('prices')
  getPrices(@Query('userId') userId: string) {
    return this.service.getPrices(Number(userId));
  }

  @Post('prices')
  savePrice(@Body() body: any) {
    return this.service.savePrice(body);
  }

  @Get('profiles')
  getProfiles(@Query('userId') userId: string) {
    return this.service.getProfiles(Number(userId));
  }

  @Post('profiles')
  saveProfiles(@Body() body: any[]) {
    return this.service.saveProfiles(body);
  }

  @Get('valuta')
  getValute(@Query('userId') userId: string) {
    return this.service.getValute(Number(userId));
  }

  @Post('valuta')
  saveValute(@Body() body: any[]) {
    return this.service.saveValute(body);
  }

  @Get('tehnicki')
  getTehnicki(@Query('userId') userId: string) {
    return this.service.getTehnicki(Number(userId));
  }

  @Post('tehnicki')
  saveTehnicki(@Body() body: any) {
    return this.service.saveTehnicki(body);
  }

  @Post('calculate/pvc19')
  calculatePVC19(@Body() body: any) {
    return this.service.calculatePVC19(body);
  }

  @Post('calculate')
  calculate(@Body() body: any) {
    return this.service.calculatePVC19(body);
  }

  @Get('formula')
  getFormula(
    @Query('vrstaStolarije') vrstaStolarije: string,
    @Query('vrstaProzora') vrstaProzora: string,
  ) {
    return this.service.getFormula(vrstaStolarije, vrstaProzora);
  }

  @Post('formula')
  saveFormula(@Body() body: any[]) {
    return this.service.saveFormula(body);
  }

  @Post('preview-formula')
  previewFormula(@Body() body: any) {
    return this.service.previewFormula(body);
  }
}