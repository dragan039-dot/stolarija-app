/*
  Warnings:

  - A unique constraint covering the columns `[userId,profil,element]` on the table `ProfileTehnicki` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[userId,key]` on the table `Setting` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "ProfileTehnicki_profil_element_key";

-- DropIndex
DROP INDEX "Setting_key_key";

-- AlterTable
ALTER TABLE "Ispuna" ADD COLUMN "userId" INTEGER;

-- AlterTable
ALTER TABLE "Okov" ADD COLUMN "userId" INTEGER;

-- AlterTable
ALTER TABLE "Profil" ADD COLUMN "userId" INTEGER;

-- AlterTable
ALTER TABLE "ProfilePrice" ADD COLUMN "userId" INTEGER;

-- AlterTable
ALTER TABLE "ProfileTehnicki" ADD COLUMN "userId" INTEGER;

-- AlterTable
ALTER TABLE "Setting" ADD COLUMN "userId" INTEGER;

-- AlterTable
ALTER TABLE "Valuta" ADD COLUMN "userId" INTEGER;

-- CreateIndex
CREATE UNIQUE INDEX "ProfileTehnicki_userId_profil_element_key" ON "ProfileTehnicki"("userId", "profil", "element");

-- CreateIndex
CREATE UNIQUE INDEX "Setting_userId_key_key" ON "Setting"("userId", "key");
