-- CreateTable
CREATE TABLE "ProfileParam" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "profil" TEXT NOT NULL,
    "parametar" TEXT NOT NULL,
    "vrednost" REAL NOT NULL
);

-- CreateTable
CREATE TABLE "ProfilePrice" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "profil" TEXT NOT NULL,
    "element" TEXT NOT NULL,
    "cena" REAL NOT NULL
);
