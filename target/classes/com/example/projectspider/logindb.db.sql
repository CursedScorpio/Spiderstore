BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "employees" (
	"id"	INTEGER,
	"email"	TEXT NOT NULL UNIQUE,
	"password"	TEXT NOT NULL,
	"full_name"	TEXT NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "customers" (
	"id"	INTEGER,
	"email"	TEXT NOT NULL UNIQUE,
	"password"	TEXT NOT NULL,
	"full_name"	TEXT NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "stock_items" (
	"id"	INTEGER,
	"item_name"	TEXT NOT NULL,
	"price"	REAL NOT NULL,
	"item_type"	TEXT NOT NULL,
	"size"	TEXT CHECK("size" IN ('S', 'M', 'L')),
	"description"	TEXT,
	"colors"	TEXT CHECK("colors" IN ('red', 'black', 'blue')),
	"picture"	BLOB,
	"stock"	INTEGER,
	"sale_percentage"	INTEGER DEFAULT 0,
	"stock_quantity"	INTEGER DEFAULT 0,
	"image_path"	TEXT,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "employees" VALUES (4,'Employee@gmail.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','Employee');
INSERT INTO "employees" VALUES (5,'Employee2@gmail.com','bcb15f821479b4d5772bd0ca866c00ad5f926e3580720659cc80d39c9d09802a','Employee 2');
INSERT INTO "employees" VALUES (7,'employee2@gmail.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','Employee2 TEST TEST TEST');
INSERT INTO "customers" VALUES (6,'User1@gmail.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','User 1');
INSERT INTO "customers" VALUES (7,'user2@gmail.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','User 2');
INSERT INTO "customers" VALUES (8,'user3@gmail.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','Users 3');
INSERT INTO "stock_items" VALUES (5,'Spiderman 1',50.0,'Book',NULL,'Womp Womp','red',NULL,NULL,0,500,NULL);
INSERT INTO "stock_items" VALUES (6,'Spiderman 2',45.0,'Tshirt','M','Spiderman 2','red',NULL,NULL,0,20,NULL);
COMMIT;
