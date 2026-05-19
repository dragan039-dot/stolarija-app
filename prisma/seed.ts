import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

async function main() {
  await prisma.formulaDefinition.deleteMany();

  await prisma.formulaDefinition.createMany({
    data: [
      {
        vrstaStolarije: "PVC",
        vrstaProzora: "Prozor + fiks (nadsvetlo-kip)",
        element: "Štok",
        s: "A + 2 * Var profila",
        v: "B + 2 * Var profila",
        kom: "2",
        cena: "kom * (S + V) / 1000 * Štok Cena",
        redosled: 1
      },
      {
        vrstaStolarije: "PVC",
        vrstaProzora: "Prozor + fiks (nadsvetlo-kip)",
        element: "Čelik za štok",
        s: "A - Skraćenje čelika za štok",
        v: "B - Skraćenje čelika za štok",
        kom: "2",
        cena: "kom * (S + V) / 1000 * Čelik Cena",
        redosled: 2
      },
      {
        vrstaStolarije: "PVC",
        vrstaProzora: "Prozor + fiks (nadsvetlo-kip)",
        element: "Lajsna za štok",
        s: "(A - 2 * Širina profila Štok - Širina profila T prečka) / 2",
        v: "D - Širina profila Štok - Širina profila T prečka",
        kom: "2",
        cena: "kom * (S + V) / 1000 * Lajsna Cena",
        redosled: 3
      }
    ]
  });
}

main()
  .then(async () => {
    await prisma.$disconnect();
  })
  .catch(async (e) => {
    console.error(e);
    await prisma.$disconnect();
    process.exit(1);
  });