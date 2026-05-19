import { Module } from '@nestjs/common';
import { JwtModule } from '@nestjs/jwt';
import { BackupService } from './backup.service';
import { BackupController } from './backup.controller';
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
  providers: [BackupService],
  controllers: [BackupController],
})
export class BackupModule {}