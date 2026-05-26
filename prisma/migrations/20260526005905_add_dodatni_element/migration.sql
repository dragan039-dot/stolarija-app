-- CreateTable
CREATE TABLE "DodatniElement" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "naziv" TEXT NOT NULL,
    "cena" DOUBLE PRECISION NOT NULL DEFAULT 0,

    CONSTRAINT "DodatniElement_pkey" PRIMARY KEY ("id")
);
