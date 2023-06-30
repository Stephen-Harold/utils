-- Create the Wrappers table
CREATE TABLE "Wrappers" (
	"Id"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL,
	"Path"	TEXT NOT NULL,
	"ScriptsPath"	TEXT NOT NULL,
	"Size"	TEXT NOT NULL,
	"Permissions"	INTEGER NOT NULL,
	"Owner"	TEXT NOT NULL,
	"Group"	TEXT NOT NULL,
	PRIMARY KEY("Id" AUTOINCREMENT)
);
-- Insert data into wrappers table
INSERT INTO 'Wrappers' ('Name', 'Path', 'ScriptsPath', 'Size', 'Permissions', 'LineCount') \
	VALUES ('utils', '/usr/local/bin', '/usr/local/bin/utild.d', '13B', 750, 'root', 'admin');
