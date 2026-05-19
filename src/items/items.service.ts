import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Item } from './item.entity';
import { Offer } from '../offers/offer.entity';

@Injectable()
export class ItemsService {
  constructor(
    @InjectRepository(Item)
    private itemRepo: Repository<Item>,
  ) {}

  async create(offer: Offer, data: Partial<Item>) {
    const item = this.itemRepo.create({
      ...data,
      offer,
    });
    return this.itemRepo.save(item);
  }

  async findAllByOffer(offerId: number) {
    return this.itemRepo.find({
      where: { offer: { id: offerId } },
    });
  }
}
