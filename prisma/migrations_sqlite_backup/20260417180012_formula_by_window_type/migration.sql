/*
  Warnings:

  - You are about to drop the column `tip` on the `FormulaDefinition` table. All the data in the column will be lost.

*/
-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_FormulaDefinition" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "vrstaStolarije" TEXT,
    "vrstaProzora" TEXT,
    "element" TEXT NOT NULL,
    "s" TEXT,
    "v" TEXT,
    "kom" INTEGER,
    "cena" TEXT,
    "redosled" INTEGER NOT NULL DEFAULT 0
);
INSERT INTO "new_FormulaDefinition" ("cena", "element", "id", "kom", "s", "v") SELECT "cena", "element", "id", "kom", "s", "v" FROM "FormulaDefinition";
DROP TABLE "FormulaDefinition";
ALTER TABLE "new_FormulaDefinition" RENAME TO "FormulaDefinition";
CREATE INDEX "FormulaDefinition_vrstaStolarije_vrstaProzora_idx" ON "FormulaDefinition"("vrstaStolarije", "vrstaProzora");
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
