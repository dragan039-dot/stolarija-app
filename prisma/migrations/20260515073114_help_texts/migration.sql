-- CreateTable
CREATE TABLE "HelpText" (
    "id" SERIAL NOT NULL,
    "fieldName" TEXT NOT NULL,
    "text" TEXT NOT NULL DEFAULT '',

    CONSTRAINT "HelpText_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "HelpText_fieldName_key" ON "HelpText"("fieldName");
