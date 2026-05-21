import { Module } from '@nestjs/common';
import { InstructionService } from './instruction.service';
import { InstructionController } from './instruction.controller';
import { PrismaService } from '../prisma.service';

@Module({
  controllers: [InstructionController],
  providers: [InstructionService, PrismaService],
})
export class InstructionModule {}