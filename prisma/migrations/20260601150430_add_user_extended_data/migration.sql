/*
  Warnings:

  - You are about to drop the column `adresa` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `cena` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `datum` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `kolicina` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `kontaktOsoba` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `korisnik` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `napomena` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `naziv` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `pib` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `telefon` on the `User` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "User" DROP COLUMN "adresa",
DROP COLUMN "cena",
DROP COLUMN "datum",
DROP COLUMN "kolicina",
DROP COLUMN "kontaktOsoba",
DROP COLUMN "korisnik",
DROP COLUMN "napomena",
DROP COLUMN "naziv",
DROP COLUMN "pib",
DROP COLUMN "telefon";
