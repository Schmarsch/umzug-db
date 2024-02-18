/*
  Warnings:

  - You are about to drop the column `Room` on the `Box` table. All the data in the column will be lost.
  - You are about to drop the column `raumId` on the `Box` table. All the data in the column will be lost.
  - You are about to drop the `Raum` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `roomId` to the `Box` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Box" DROP CONSTRAINT "Box_raumId_fkey";

-- AlterTable
ALTER TABLE "Box" DROP COLUMN "Room",
DROP COLUMN "raumId",
ADD COLUMN     "roomId" TEXT NOT NULL;

-- DropTable
DROP TABLE "Raum";

-- CreateTable
CREATE TABLE "Room" (
    "id" TEXT NOT NULL,
    "Name" TEXT NOT NULL,

    CONSTRAINT "Room_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Box" ADD CONSTRAINT "Box_roomId_fkey" FOREIGN KEY ("roomId") REFERENCES "Room"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
