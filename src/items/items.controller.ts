import { Controller, Post, Get, Body, Param } from '@nestjs/common';
import { ItemsService } from './items.service';
import { InjectRepository } from '@nestjs/typeorm';
import { Offer } from '../offers/offer.entity';
import { Repository } from 'typeorm';

@Controller('items')
export class ItemsController {
  constructor(
    private readonly itemsService: ItemsService,
    @InjectRepository(Offer)
    private offerRepo: Repository<Offer>,
  ) {}

  @Post(':offerId')
  async createItem(@Param('offerId') offerId: number, @Body() body: any) {
    const offer = await this.offerRepo.findOneBy({ id: offerId });
    if (!offer) throw new Error('Ponuda ne postoji');
    return this.itemsService.create(offer, body);
  }

  @Get(':offerId')
  async getItems(@Param('offerId') offerId: number) {
    return this.itemsService.findAllByOffer(offerId);
  }
}
