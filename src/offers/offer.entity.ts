import { Entity, PrimaryGeneratedColumn, Column, ManyToOne } from 'typeorm';
import { Customer } from '../customers/customer.entity';

@Entity()
export class Offer {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  datum: string;

  @Column({ nullable: true })
  napomena: string;

  @Column({ default: 0 })
  popust: number;

  @Column({ default: 'RSD' })
  valuta: string;

  @ManyToOne(() => Customer)
  customer: Customer;
}
