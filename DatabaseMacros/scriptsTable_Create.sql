/* Create the Scripts table */

CREATE TABLE "Scripts" (
	"Id"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL,
	"Size"	TEXT NOT NULL,
	"Permissions"	INTEGER NOT NULL,
	"Owner"	TEXT NOT NULL,
	"Group"	TEXT NOT NULL,
	"Command"	TEXT,
	"Path"	TEXT NOT NULL,
	PRIMARY KEY("Id" AUTOINCREMENT)
)
