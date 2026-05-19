-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Offer" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "userId" INTEGER,
    "brojPonude" TEXT,
    "godinaPonude" INTEGER,
    "redniBrojGodina" INTEGER,
    "naziv" TEXT,
    "adresa" TEXT,
    "telefon" TEXT,
    "pib" TEXT,
    "maticni" TEXT,
    "datum" TEXT,
    "vrsta_ponude" TEXT,
    "valuta" TEXT,
    "popust" TEXT,
    "napomena" TEXT,
    CONSTRAINT "Offer_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);
INSERT INTO "new_Offer" ("adresa", "brojPonude", "datum", "godinaPonude", "id", "maticni", "napomena", "naziv", "pib", "popust", "redniBrojGodina", "telefon", "userId", "valuta", "vrsta_ponude") SELECT "adresa", "brojPonude", "datum", "godinaPonude", "id", "maticni", "napomena", "naziv", "pib", "popust", "redniBrojGodina", "telefon", "userId", "valuta", "vrsta_ponude" FROM "Offer";
DROP TABLE "Offer";
ALTER TABLE "new_Offer" RENAME TO "Offer";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
