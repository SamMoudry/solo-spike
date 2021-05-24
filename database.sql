-- holds the players total money and yield for a specific year of a specific game
CREATE TABLE "year" (
	"id" SERIAL PRIMARY KEY,
	"year_number" INT NOT NULL,
	"game_id" INT NOT NULL,
	"total_yield" INT NOT NULL,
	"total_money" INT NOT NULL
);

-- holds the specific value and amount owned of a stock for a specific game of a specific year 
CREATE TABLE "stock_year" (
	"id" SERIAL PRIMARY KEY,
	"year_id" INT NOT NULL,
	"stock_id" INT NOT NULL,
	"value" INT NOT NULL,
	"stock_amount" INT NOT NULL,
	"game_id" INT NOT NULL
);

-- holds the basic information on each of the stocks
CREATE TABLE "stock" (
	"id" SERIAL PRIMARY KEY,
	"name" VARCHAR(100) NOT NULL,
	"yield" INT NOT NULL
);

INSERT INTO "stock" ("name", "yield")
VALUES ('City Central Bonds', 50),
('Growth Corp', 10),
('Metro Prop', 0),
('Pioneer Mult', 40),
('Shady Brooks', 70);