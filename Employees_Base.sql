BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Employees" (
	"EmployeeID"	INTEGER,
	"LastName"	TEXT,
	"FirstName"	TEXT,
	"Dni"	INTEGER,
	"PostID"	INTEGER,
	"DepartmentID"	INTEGER,
	"Address"	TEXT,
	"Residence"	TEXT,
	FOREIGN KEY("PostID") REFERENCES "Posts"("PostID"),
	PRIMARY KEY("EmployeeID" AUTOINCREMENT),
	FOREIGN KEY("DepartmentID") REFERENCES "Departments"("DepartmentID")
);
CREATE TABLE IF NOT EXISTS "Posts" (
	"PostID"	INTEGER,
	"PostName"	TEXT,
	"Role"	TEXT,
	"DepartmentID"	INTEGER,
	FOREIGN KEY("DepartmentID") REFERENCES "Departments"("DepartmentID"),
	PRIMARY KEY("PostID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Departments" (
	"DepartmentID"	INTEGER,
	"DepartmentName"	TEXT,
	"DepartmentRole"	TEXT,
	"Floor"	INTEGER,
	PRIMARY KEY("DepartmentID" AUTOINCREMENT)
);
INSERT INTO "Employees" ("EmployeeID","LastName","FirstName","Dni","PostID","DepartmentID","Address","Residence") VALUES (1,'Rodriguez','Parmenides',857364,2,1,'Calle 27 # 1783','The Ovens'),
 (2,'Martinez','Pontificio',857389,2,1,'Calle 25 # 4683','The Moorlands'),
 (3,'Perez','Lucrecio',809364,1,2,'Calle 89 # 1787','The Snakes'),
 (4,'Travolta','Gustavo',127364,3,1,'Calle 12 # 1283','The Thursdays'),
 (5,'Caudillo','John',237492,4,3,'Calle 65 # 1703','The Books');
INSERT INTO "Posts" ("PostID","PostName","Role","DepartmentID") VALUES (1,'Warehouse keeper','Receive packages, take inventory of the warehouse, organize warehouse and accommodate more boxes',2),
 (2,'Office worker','Answer calls, make sales, yawn and create gossips',1),
 (3,'Office manager','manage',1),
 (4,'Execustoner','execute office workers',3);
INSERT INTO "Departments" ("DepartmentID","DepartmentName","DepartmentRole","Floor") VALUES (1,'Principal offices','space to accommodate office workers',1),
 (2,'warehouse','space to accommodate boxes',-1),
 (3,'Executors offices','Space to have coffee and Don Satur cookies after an execution',2);
COMMIT;
