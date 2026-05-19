-- CreateTable
CREATE TABLE "Offer" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER,
    "brojPonude" TEXT,
    "godinaPonude" INTEGER,
    "redniBrojGodina" INTEGER,
    "naziv" TEXT,
    "adresa" TEXT,
    "telefon" TEXT,
    "pib" TEXT,
    "maticni" TEXT,
    "datum" TEXT,
    "vrsta_ponude" TEXT,
    "valuta" TEXT,
    "popust" TEXT,
    "napomena" TEXT,

    CONSTRAINT "Offer_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "OfferItem" (
    "id" SERIAL NOT NULL,
    "offerId" INTEGER NOT NULL,
    "vrsta_stolarije" TEXT,
    "vrsta_prozora" TEXT,
    "a" INTEGER,
    "b" INTEGER,
    "c" INTEGER,
    "d" INTEGER,
    "profil" TEXT,
    "ispuna" TEXT,
    "okov" TEXT,
    "otvaranje" TEXT,
    "roletna" TEXT,
    "komarnik" TEXT,
    "kolicina" INTEGER,

    CONSTRAINT "OfferItem_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Param" (
    "id" SERIAL NOT NULL,
    "grupa" TEXT NOT NULL,
    "naziv" TEXT NOT NULL,
    "cena" DOUBLE PRECISION,

    CONSTRAINT "Param_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Setting" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER,
    "key" TEXT NOT NULL,
    "value" TEXT NOT NULL,

    CONSTRAINT "Setting_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ProfileParam" (
    "id" SERIAL NOT NULL,
    "profil" TEXT NOT NULL,
    "parametar" TEXT NOT NULL,
    "vrednost" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "ProfileParam_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ProfilePrice" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER,
    "profil" TEXT NOT NULL,
    "element" TEXT NOT NULL,
    "cena" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "ProfilePrice_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Okov" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER,
    "naziv" TEXT NOT NULL,
    "cena" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "Okov_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Params" (
    "id" SERIAL NOT NULL,
    "grupa" TEXT NOT NULL,
    "naziv" TEXT NOT NULL,

    CONSTRAINT "Params_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Ispuna" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER,
    "naziv" TEXT NOT NULL,
    "cena" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "Ispuna_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Profil" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER,
    "naziv" TEXT NOT NULL,

    CONSTRAINT "Profil_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Valuta" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER,
    "naziv" TEXT NOT NULL,

    CONSTRAINT "Valuta_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Profile" (
    "id" SERIAL NOT NULL,
    "naziv" TEXT NOT NULL,

    CONSTRAINT "Profile_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ProfileTehnicki" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER,
    "profil" TEXT NOT NULL,
    "element" TEXT NOT NULL,
    "vrednost" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "ProfileTehnicki_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "FormulaDefinition" (
    "id" SERIAL NOT NULL,
    "vrstaStolarije" TEXT,
    "vrstaProzora" TEXT,
    "element" TEXT NOT NULL,
    "s" TEXT,
    "v" TEXT,
    "kom" INTEGER,
    "cena" TEXT,
    "redosled" INTEGER NOT NULL DEFAULT 0,

    CONSTRAINT "FormulaDefinition_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "OfferExtraItem" (
    "id" SERIAL NOT NULL,
    "offerId" INTEGER NOT NULL,
    "naziv" TEXT,
    "kolicina" INTEGER NOT NULL DEFAULT 1,
    "cena" DOUBLE PRECISION NOT NULL DEFAULT 0,

    CONSTRAINT "OfferExtraItem_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "username" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "role" TEXT NOT NULL DEFAULT 'USER',
    "isActive" BOOLEAN NOT NULL DEFAULT true,
    "licenseStart" TIMESTAMP(3),
    "licenseEnd" TIMESTAMP(3),
    "maxDevices" INTEGER NOT NULL DEFAULT 1,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserDevice" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "fingerprint" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "UserDevice_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "AuditLog" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER,
    "username" TEXT NOT NULL,
    "action" TEXT NOT NULL,
    "details" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "AuditLog_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Setting_userId_key_key" ON "Setting"("userId", "key");

-- CreateIndex
CREATE UNIQUE INDEX "ProfileTehnicki_userId_profil_element_key" ON "ProfileTehnicki"("userId", "profil", "element");

-- CreateIndex
CREATE INDEX "FormulaDefinition_vrstaStolarije_vrstaProzora_idx" ON "FormulaDefinition"("vrstaStolarije", "vrstaProzora");

-- CreateIndex
CREATE UNIQUE INDEX "User_username_key" ON "User"("username");

-- CreateIndex
CREATE UNIQUE INDEX "UserDevice_userId_fingerprint_key" ON "UserDevice"("userId", "fingerprint");

-- AddForeignKey
ALTER TABLE "Offer" ADD CONSTRAINT "Offer_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "OfferItem" ADD CONSTRAINT "OfferItem_offerId_fkey" FOREIGN KEY ("offerId") REFERENCES "Offer"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "OfferExtraItem" ADD CONSTRAINT "OfferExtraItem_offerId_fkey" FOREIGN KEY ("offerId") REFERENCES "Offer"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UserDevice" ADD CONSTRAINT "UserDevice_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;
