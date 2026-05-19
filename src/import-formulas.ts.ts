import Database from 'better-sqlite3';
import { PrismaClient } from '@prisma/client';
import * as path from 'path';

const prisma = new PrismaClient();

async function main() {
  const sqlitePath = path.join(
    process.cwd(),
    'backups',
    'backup-2026-05-11-11-04.db'
  );

  const db = new Database(sqlitePath);

  const formulas = db
    .prepare(`
      SELECT *
      FROM FormulaDefinition
      ORDER BY id ASC
    `)
    .all();

  console.log('Nađeno formula:', formulas.length);

  if (formulas.length === 0) {
    console.log('Nema formula za import.');
    return;
  }

  await prisma.formulaDefinition.deleteMany();

  for (const f of formulas as any[]) {
    await prisma.formulaDefinition.create({
      data: {
        vrstaStolarije: f.vrstaStolarije || '',
        vrstaProzora: f.vrstaProzora || '',
        element: f.element || '',
        s: f.s || '',
        v: f.v || '',
        kom:
  f.kom === null || f.kom === undefined
    ? ""
    : String(f.kom),
        cena: f.cena || '',
        redosled: Number(f.redosled) || 0,
      },
    });
  }

  console.log('Formule uspešno prebačene u PostgreSQL.');
}

main()
  .catch((e) => {
    console.error('GREŠKA:', e);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });