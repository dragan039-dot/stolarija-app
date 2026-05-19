import { Module } from '@nestjs/common';
import { JwtModule } from '@nestjs/jwt';
import { OffersController } from './offers.controller';
import { OffersService } from './offers.service';
import { PrismaService } from '../prisma.service';
import { AuditModule } from '../audit/audit.module';

@Module({
  imports: [
    AuditModule,
    JwtModule.register({
      secret: process.env.JWT_SECRET || 'dev-secret',
      signOptions: {
        expiresIn: 60 * 60 * 24 * 7,
      },
    }),
  ],
  controllers: [OffersController],
  providers: [OffersService, PrismaService],
})
export class OffersModule {}