import { Module } from '@nestjs/common';
import { JwtModule } from '@nestjs/jwt';
import { ParamsController } from './params.controller';
import { ParamsService } from './params.service';
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
  controllers: [ParamsController],
  providers: [ParamsService, PrismaService],
})
export class ParamsModule {}