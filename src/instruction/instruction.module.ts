import { InstructionUploadController } from './instruction-upload.controller';
import { Module } from '@nestjs/common';
import { JwtModule } from '@nestjs/jwt';

import { InstructionController } from './instruction.controller';
import { InstructionService } from './instruction.service';
import { PrismaService } from '../prisma.service';

@Module({
  imports: [JwtModule],

controllers: [
  InstructionController,
  InstructionUploadController,
],

  providers: [
    InstructionService,
    PrismaService
  ],
})
export class InstructionModule {}