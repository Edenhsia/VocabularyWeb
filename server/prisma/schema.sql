CREATE TYPE "role" AS ENUM ('admin', 'user');

CREATE TABLE "public"."User" (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "email" TEXT UNIQUE NOT NULL,
  "password" TEXT NOT NULL,
  "role" role NOT NULL
);

CREATE TABLE "public"."Category" (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "name" TEXT UNIQUE NOT NULL
);

CREATE TABLE "public"."Vocabulary" (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "name" TEXT NOT NULL,
  "src" TEXT,
  "sentance" TEXT,
  "chinese" TEXT,
  "chineseSentance" TEXT,
  "categoryId" INTEGER NOT NULL,
  FOREIGN KEY ("categoryId") REFERENCES "public"."Category"(id)
);
