-- CreateTable
CREATE TABLE "SiteRequest" (
    "id" SERIAL NOT NULL,
    "firma" TEXT,
    "pib" TEXT,
    "kontaktOsoba" TEXT,
    "telefon" TEXT,
    "email" TEXT,
    "brojKorisnika" TEXT,
    "poruka" TEXT,
    "ip" TEXT,
    "deleted" BOOLEAN NOT NULL DEFAULT false,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "SiteRequest_pkey" PRIMARY KEY ("id")
);
