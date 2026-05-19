/*
  Warnings:

  - A unique constraint covering the columns `[userId,profil,element]` on the table `ProfilePrice` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "ProfilePrice_userId_profil_element_key" ON "ProfilePrice"("userId", "profil", "element");
