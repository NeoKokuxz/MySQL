# MySQL
MySQL Commands and test dbs

## Commands

```sql

SQL Commands

CREATE DATABASE <name>; - create

DROP DATABASE <name>; - delete

USE <database name>; - change database

SELECT database(); - check current db

SHOW TABLES; - show all table in current db

SHOW COLUMNS FROM <table name>; - show all column with types key etc in current table

DESC <tablename>;  - same above

DROP TABLE <tablename>; - delete table

INSERT INTO <tableName> (data, data) VALUES (‘Hello’, 1); - insert varchar and int into table

SHOW WARNINGS; - show all warnings

NOT NULL - prevent null entries, if no entry, will set it to default value

DEFAULT - set default value, ex: name varchar(50) DEFAULT ‘noName’,

PRIMARY KEY - Unique identifier, ex: PRIMARY KEY (FieldName) 

 AUTO_INCREMENT - increase id of primary key 

CRUD - Create, Read, Update, Delete

Read:
WHERE - condition / compare

Update:
Key words: UPDATE / SET / WHERE
ex: UPDATE cats SET name = ‘New’ WHERE name = ‘Old’;

Delete:
DELETE - delete records
ex: DELETE FROM cats WHERE name = ’Hello’;

```
