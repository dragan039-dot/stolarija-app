import { Body, Controller, Get, Param, Post, Put, Query, UseGuards } from '@nestjs/common';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { OffersService } from './offers.service';


@UseGuards(JwtAuthGuard)
@Controller('offers')
export class OffersController {
  constructor(private readonly service: OffersService) {}

  // ✅ GET ALL
@Get()
getAll(@Query('userId') userId: string) {
  return this.service.getAll(Number(userId));
}

  // ✅ GET ONE
  @Get(':id')
  getOne(@Param('id') id: string) {
    return this.service.getOne(Number(id));
  }

  // ✅ CREATE (SAVE)
  @Post()
  create(@Body() body: any) {
    return this.service.create(body);
  }

@Put(':id')
update(@Param('id') id: string, @Body() body: any) {
  return this.service.update(Number(id), body);
}

@Get('admin/all')
getAllForAdmin() {
  return this.service.getAllForAdmin();
}


}
