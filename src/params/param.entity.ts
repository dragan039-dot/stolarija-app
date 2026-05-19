import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm';

@Entity()
export class Param {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  naziv: string;

  @Column('float', { default: 0 })
  vrednost: number;
}
