-- AlterTable
ALTER TABLE "SiteRequest" ADD COLUMN     "adminNapomena" TEXT,
ADD COLUMN     "status" TEXT NOT NULL DEFAULT 'Novi';
