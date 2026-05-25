-- CreateTable
CREATE TABLE "Roletna" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "naziv" TEXT NOT NULL,
    "cena" DOUBLE PRECISION NOT NULL DEFAULT 0,

    CONSTRAINT "Roletna_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Komarnik" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "naziv" TEXT NOT NULL,
    "cena" DOUBLE PRECISION NOT NULL DEFAULT 0,

    CONSTRAINT "Komarnik_pkey" PRIMARY KEY ("id")
);
