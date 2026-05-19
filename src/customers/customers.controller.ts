import { Controller, Post, Body, Get } from '@nestjs/common';
import { CustomersService } from './customers.service';

@Controller('customers') // <--- ovo mora biti 'customers'
export class CustomersController {
  constructor(private service: CustomersService) {}

  @Post()
  create(@Body() body: any) {
    return this.service.create(body);
  }

  @Get()
  findAll() {
    return this.service.findAll();
  }
}
