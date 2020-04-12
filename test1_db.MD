mysql> SELECT * FROM shirts;                                                              +----------+------------+--------+------------+-----------+
| shirt_id | type       | color  | shirt_size | last_worn |
+----------+------------+--------+------------+-----------+
|        1 | polo shirt | purple | M          |        50 |
|        2 | T-shirt    | purple | M          |        50 |
|        3 | T-shirt    | purple | M          |        50 |
|        4 | T-shirt    | purple | M          |        50 |
|        5 | T-shirt    | purple | M          |        50 |
+----------+------------+--------+------------+-----------+
5 rows in set (0.00 sec)

mysql> SELECT type, color FROM shirts;
+------------+--------+
| type       | color  |
+------------+--------+
| polo shirt | purple |
| T-shirt    | purple |
| T-shirt    | purple |
| T-shirt    | purple |
| T-shirt    | purple |
+------------+--------+
5 rows in set (0.00 sec)

mysql> SELECT shirt_id FROM shirts WHERE shirt_size = 'M';
+----------+
| shirt_id |
+----------+
|        1 |
|        2 |
|        3 |
|        4 |
|        5 |
+----------+
5 rows in set (0.01 sec)

mysql> UPDATE shirts SET shirt_size = 'L' WHERE type = 'polo shirt';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM shirts;
+----------+------------+--------+------------+-----------+
| shirt_id | type       | color  | shirt_size | last_worn |
+----------+------------+--------+------------+-----------+
|        1 | polo shirt | purple | L          |        50 |
|        2 | T-shirt    | purple | M          |        50 |
|        3 | T-shirt    | purple | M          |        50 |
|        4 | T-shirt    | purple | M          |        50 |
|        5 | T-shirt    | purple | M          |        50 |
+----------+------------+--------+------------+-----------+
5 rows in set (0.00 sec)

mysql> UPDATE shirts SET last_worn = 0 WHERE last_worn > 15;
Query OK, 5 rows affected (0.01 sec)
Rows matched: 5  Changed: 5  Warnings: 0

mysql> SELECT * FROM shirts;
+----------+------------+--------+------------+-----------+
| shirt_id | type       | color  | shirt_size | last_worn |
+----------+------------+--------+------------+-----------+
|        1 | polo shirt | purple | L          |         0 |
|        2 | T-shirt    | purple | M          |         0 |
|        3 | T-shirt    | purple | M          |         0 |
|        4 | T-shirt    | purple | M          |         0 |
|        5 | T-shirt    | purple | M          |         0 |
+----------+------------+--------+------------+-----------+
5 rows in set (0.00 sec)

mysql> UPDATE shirts SET color = 'off white' WHERE shirt_size = 'M';
Query OK, 4 rows affected (0.01 sec)
Rows matched: 4  Changed: 4  Warnings: 0

mysql> SELECT * FROM shirts;
+----------+------------+-----------+------------+-----------+
| shirt_id | type       | color     | shirt_size | last_worn |
+----------+------------+-----------+------------+-----------+
|        1 | polo shirt | purple    | L          |         0 |
|        2 | T-shirt    | off white | M          |         0 |
|        3 | T-shirt    | off white | M          |         0 |
|        4 | T-shirt    | off white | M          |         0 |
|        5 | T-shirt    | off white | M          |         0 |
+----------+------------+-----------+------------+-----------+
5 rows in set (0.00 sec)

mysql> UPDATE shirts SET last_worn = 500 WHERE last_worn = 0;
Query OK, 5 rows affected (0.01 sec)
Rows matched: 5  Changed: 5  Warnings: 0

mysql> SELECT * FROM shirts;
+----------+------------+-----------+------------+-----------+
| shirt_id | type       | color     | shirt_size | last_worn |
+----------+------------+-----------+------------+-----------+
|        1 | polo shirt | purple    | L          |       500 |
|        2 | T-shirt    | off white | M          |       500 |
|        3 | T-shirt    | off white | M          |       500 |
|        4 | T-shirt    | off white | M          |       500 |
|        5 | T-shirt    | off white | M          |       500 |
+----------+------------+-----------+------------+-----------+
5 rows in set (0.00 sec)

mysql> UPDATE shirts SET last_worn = 0 WHERE type = 'polo shirt';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM shirts;
+----------+------------+-----------+------------+-----------+
| shirt_id | type       | color     | shirt_size | last_worn |
+----------+------------+-----------+------------+-----------+
|        1 | polo shirt | purple    | L          |         0 |
|        2 | T-shirt    | off white | M          |       500 |
|        3 | T-shirt    | off white | M          |       500 |
|        4 | T-shirt    | off white | M          |       500 |
|        5 | T-shirt    | off white | M          |       500 |
+----------+------------+-----------+------------+-----------+
5 rows in set (0.00 sec)

mysql> DELETE FROM shirts WHERE last_worn > 0;
Query OK, 4 rows affected (0.00 sec)

mysql> SELECT * FROM shirts;
+----------+------------+--------+------------+-----------+
| shirt_id | type       | color  | shirt_size | last_worn |
+----------+------------+--------+------------+-----------+
|        1 | polo shirt | purple | L          |         0 |
+----------+------------+--------+------------+-----------+
1 row in set (0.00 sec)

mysql> DELETE FROM shirts;
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM shirts;
Empty set (0.00 sec)

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
5 rows in set (0.01 sec)
