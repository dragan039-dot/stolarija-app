-- CreateTable
CREATE TABLE "AdClick" (
    "id" SERIAL NOT NULL,
    "adKey" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "AdClick_pkey" PRIMARY KEY ("id")
);
