-- CreateTable
CREATE TABLE "SiteTranslation" (
    "id" SERIAL NOT NULL,
    "key" TEXT NOT NULL,
    "value" TEXT NOT NULL DEFAULT '',
    "languageId" INTEGER NOT NULL,

    CONSTRAINT "SiteTranslation_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "SiteTranslation_key_languageId_key" ON "SiteTranslation"("key", "languageId");

-- AddForeignKey
ALTER TABLE "SiteTranslation" ADD CONSTRAINT "SiteTranslation_languageId_fkey" FOREIGN KEY ("languageId") REFERENCES "Language"("id") ON DELETE CASCADE ON UPDATE CASCADE;
