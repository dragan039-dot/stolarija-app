import { Entity, PrimaryGeneratedColumn, Column, ManyToOne } from 'typeorm';
import { Offer } from '../offers/offer.entity';

@Entity()
export class Item {
  @PrimaryGeneratedColumn()
  id: number;

  @ManyToOne(() => Offer, offer => offer.id, { onDelete: 'CASCADE' })
  offer: Offer;

  @Column()
  vrsta_stolarije: string;

  @Column()
  vrsta_prozora: string;

  @Column()
  otvaranje: string;

  @Column()
  profil: string;

  @Column({ type: 'float', default: 0 })
  a: number;

  @Column({ type: 'float', default: 0 })
  b: number;

  @Column({ type: 'float', default: 0 })
  c: number;

  @Column({ type: 'float', default: 0 })
  dc: number;

  @Column({ default: 'ne' })
  roletna: string;

  @Column({ default: 'ne' })
  komarnik: string;

  @Column({ default: 'staklo' })
  ispuna: string;

  @Column({ default: 'standard' })
  okov: string;

  @Column({ type: 'int', default: 1 })
  kolicina: number;
}
