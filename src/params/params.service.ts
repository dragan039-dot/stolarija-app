import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma.service';

@Injectable()
export class ParamsService {
  constructor(private prisma: PrismaService) {}

  // =========================
  // PROFILI
  // =========================

  async getProfiles() {
    return this.prisma.param.findMany({
      where: { grupa: "profil" },
      orderBy: { id: "asc" }
    });
  }

  async updateProfile(id: number, naziv: string) {
    return this.prisma.param.update({
      where: { id },
      data: { naziv }
    });
  }

  async deleteProfile(id: number) {
    return this.prisma.param.delete({
      where: { id }
    });
  }

  // =========================
  // OSTALO (ako već koristiš)
  // =========================

  async getAll() {
    return this.prisma.param.findMany({
      orderBy: { id: 'asc' }
    });
  }

  async getByGroup(grupa: string) {
    return this.prisma.param.findMany({
      where: { grupa }
    });
  }

  async create(data: { grupa: string; naziv: string }) {
    return this.prisma.param.create({
      data
    });
  }

  async remove(id: number) {
    return this.prisma.param.delete({
      where: { id }
    });
  }
}