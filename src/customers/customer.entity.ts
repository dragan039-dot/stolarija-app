import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm';

@Entity()
export class Customer {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  naziv: string;

  @Column()
  adresa: string;

  @Column()
  telefon: string;

  @Column({ nullable: true })
  pib: string;

  @Column({ nullable: true })
  maticni_broj: string;
}
