/*
  Warnings:

  - A unique constraint covering the columns `[profil,element]` on the table `ProfileTehnicki` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "ProfileTehnicki_profil_element_key" ON "ProfileTehnicki"("profil", "element");
