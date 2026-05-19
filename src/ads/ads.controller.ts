import {
  Body,
  Controller,
  Get,
  Post,
  UploadedFile,
  UseGuards,
  UseInterceptors,
} from '@nestjs/common';
import { FileInterceptor } from '@nestjs/platform-express';
import { diskStorage } from 'multer';
import * as path from 'path';

import { AdsService } from './ads.service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';

@UseGuards(JwtAuthGuard)
@Controller('ads')
export class AdsController {
  constructor(private service: AdsService) {}

  @Get()
  getAll() {
    return this.service.getAll();
  }

  @Post()
  saveMany(@Body() body: any[]) {
    return this.service.saveMany(body);
  }

  @Post('upload')
  @UseInterceptors(
    FileInterceptor('file', {
      storage: diskStorage({
        destination: './src/uploads/ads',
        filename: (req, file, cb) => {
          const ext = path.extname(file.originalname);
          const name = Date.now() + ext;
          cb(null, name);
        },
      }),
    }),
  )
  upload(@UploadedFile() file: any) {
    return {
      fileName: file.filename,
      path: `/uploads/ads/${file.filename}`,
    };
  }

@Post('click')
registerClick(@Body() body: any) {
  return this.service.registerClick(body.adKey);
}

@Get('stats')
getStats() {
  return this.service.getStats();
}

@Post('reset-clicks')
resetClicks(@Body() body: any) {
  return this.service.resetClicks(body.adKey);
}



}