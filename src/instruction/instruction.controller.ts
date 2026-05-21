import { Body, Controller, Get, Post, UseGuards } from '@nestjs/common';
import { InstructionService } from './instruction.service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';

@UseGuards(JwtAuthGuard)
@Controller('instruction')
export class InstructionController {
  constructor(private service: InstructionService) {}

  @Get()
  getInstruction() {
    return this.service.getInstruction();
  }

  @Post()
  saveInstruction(@Body() body: any) {
    return this.service.saveInstruction(body.content || '');
  }
}