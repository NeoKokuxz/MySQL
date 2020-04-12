# MySQL
MySQL Commands and test dbs

## Commands
- Run SQL in terminal (Mac OS)
```
mysql -u root -p
Enter Password*
```
- CREATE Database
```
CREATE DATABASE <name>; - create
```
- DROP Database
```
DROP DATABASE <name>; - delete
```
- USE Database / Change current Database
```
USE <database name>; - change database
SELECT database(); - check current db
```
- SHOW current records in db
```
SHOW TABLES; - show all table in current db
SHOW COLUMNS FROM <table name>; - show all column with types key etc in current table
DESC <tablename>;  - same above
```
## CRUD - Create, Read, Update, Delete
- Keywords: 
```
DROP TABLE <tablename>; - delete table

INSERT INTO <tableName> (data, data) VALUES (‘Hello’, 1); - insert varchar and int into table

SHOW WARNINGS; - show all warnings

NOT NULL - prevent null entries, if no entry, will set it to default value

DEFAULT - set default value, ex: name varchar(50) DEFAULT ‘noName’,

PRIMARY KEY - Unique identifier, ex: PRIMARY KEY (FieldName) 

AUTO_INCREMENT - increase id of primary key 
```
- Create:
```
CREATE table()
Example:
CREATE TABLE shirts( shirt_id INT NOT NULL AUTO_INCREMENT, type VARCHAR(20) NOT NULL, color VARCHAR(20) NOT NULL, shirt_size VARCHAR(5) NOT NULL, last_worn INT NOT NULL, PRIMARY KEY (shirt_id));
```
```
mysql> DESC shirts;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| shirt_id   | int         | NO   | PRI | NULL    | auto_increment |
| type       | varchar(20) | NO   |     | NULL    |                |
| color      | varchar(20) | NO   |     | NULL    |                |
| shirt_size | varchar(5)  | NO   |     | NULL    |                |
| last_worn  | int         | NO   |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
```

- Read:
WHERE - condition / compare

- Update:
```
Key words: UPDATE / SET / WHERE
ex: UPDATE cats SET name = ‘New’ WHERE name = ‘Old’;
```

- Delete:
```
DELETE - delete records
ex: DELETE FROM cats WHERE name = ’Hello’;

```
