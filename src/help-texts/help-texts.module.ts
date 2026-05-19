import { Module } from '@nestjs/common';
import { JwtModule } from '@nestjs/jwt';
import { HelpTextsController } from './help-texts.controller';
import { HelpTextsService } from './help-texts.service';
import { PrismaService } from '../prisma.service';

@Module({
  imports: [
    JwtModule.register({
      secret: process.env.JWT_SECRET || 'dev-secret',
      signOptions: {
        expiresIn: 60 * 60 * 24 * 7,
      },
    }),
  ],
  controllers: [HelpTextsController],
  providers: [HelpTextsService, PrismaService],
})
export class HelpTextsModule {}