import { Module } from '@nestjs/common';
import { JwtModule } from '@nestjs/jwt';
import { OkovController } from './okov.controller';
import { OkovService } from './okov.service';
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
  controllers: [OkovController],
  providers: [OkovService, PrismaService],
})
export class OkovModule {}