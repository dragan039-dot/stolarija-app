-- CreateTable
CREATE TABLE "OfferExtraItem" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "offerId" INTEGER NOT NULL,
    "naziv" TEXT,
    "kolicina" INTEGER NOT NULL DEFAULT 1,
    "cena" REAL NOT NULL DEFAULT 0,
    CONSTRAINT "OfferExtraItem_offerId_fkey" FOREIGN KEY ("offerId") REFERENCES "Offer" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);
