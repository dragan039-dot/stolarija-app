import {
  Body,
  Controller,
  Get,
  Post,
  Query,
  Res,
  UseGuards,
} from '@nestjs/common';
import type { Response } from 'express';
import * as path from 'path';
import { BackupService } from './backup.service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';

@UseGuards(JwtAuthGuard)
@Controller('backup')
export class BackupController {
  constructor(private service: BackupService) {}

  @Post('create')
  createBackup() {
    return this.service.createBackup();
  }

  @Get('list')
  listBackups() {
    return this.service.listBackups();
  }

  @Get('download')
  downloadBackup(@Query('file') file: string, @Res() res: Response) {
    const filePath = path.join(process.cwd(), 'backups', file);
    return res.download(filePath);
  }

  @Post('delete')
  deleteBackup(@Body() body: any) {
    return this.service.deleteBackup(body.fileName);
  }

  @Post('restore')
  restoreBackup(@Body() body: any) {
    return this.service.restoreBackup(body.fileName);
  }
}