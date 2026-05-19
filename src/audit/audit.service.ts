import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma.service';

@Injectable()
export class AuditService {
  constructor(private prisma: PrismaService) {}

  async log(
    username: string,
    action: string,
    details = '',
    userId?: number,
  ) {
    try {
      await this.prisma.auditLog.create({
        data: {
          userId,
          username,
          action,
          details,
        },
      });
    } catch (err) {
      console.error('AUDIT LOG ERROR', err);
    }
  }

  async getAll() {
    return this.prisma.auditLog.findMany({
      orderBy: {
        createdAt: 'desc',
      },
      take: 500,
    });
  }
}