
-- USER is a reserved keyword with Postgres
-- You must use double quotes in every query that user is in:
-- ex. SELECT * FROM "user";
-- Otherwise you will have errors!

CREATE TABLE "user" (
    "id" SERIAL PRIMARY KEY,
    "first_name" varchar(255) NOT NULL,
    "last_name" VARCHAR(255) NOT NULL,
    "username" VARCHAR (80) UNIQUE NOT NULL,
    "password" VARCHAR (1000) NOT NULL
);

CREATE TABLE "image" (
	"id" SERIAL PRIMARY KEY,
	"path" VARCHAR(255) NOT NULL,
	"user_id" INT REFERENCES "user"(id)
);
	

CREATE TABLE "journal" (
	"id" SERIAL PRIMARY KEY,
	"title" VARCHAR (255),
	"date" DATE NOT NULL,
	"note" VARCHAR(2555),
	"user_id" INT REFERENCES "user"(id)
);