-- CreateTable
CREATE TABLE "Offer" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "naziv" TEXT,
    "adresa" TEXT,
    "telefon" TEXT,
    "pib" TEXT,
    "maticni" TEXT,
    "datum" TEXT,
    "vrsta_ponude" TEXT,
    "valuta" TEXT,
    "popust" TEXT,
    "napomena" TEXT
);

-- CreateTable
CREATE TABLE "OfferItem" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "offerId" INTEGER NOT NULL,
    "vrsta_stolarije" TEXT,
    "vrsta_prozora" TEXT,
    "a" INTEGER,
    "b" INTEGER,
    "c" INTEGER,
    "d" INTEGER,
    "profil" TEXT,
    "ispuna" TEXT,
    "okov" TEXT,
    "otvaranje" TEXT,
    "roletna" TEXT,
    "komarnik" TEXT,
    "kolicina" INTEGER,
    CONSTRAINT "OfferItem_offerId_fkey" FOREIGN KEY ("offerId") REFERENCES "Offer" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
