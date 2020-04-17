mysql> SELECT title FROM books WHERE title LIKE '%stories%';
+-----------------------------------------------------+
| title                                               |
+-----------------------------------------------------+
| What We Talk About When We Talk About Love: Stories |
| Where I'm Calling From: Selected Stories            |
| Oblivion: Stories                                   |
+-----------------------------------------------------+
3 rows in set (0.00 sec)

mysql> SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;
+-------------------------------------------+-------+
| title                                     | pages |
+-------------------------------------------+-------+
| The Amazing Adventures of Kavalier & Clay |   634 |
+-------------------------------------------+-------+
1 row in set (0.01 sec)

mysql> SELECT title, pages FROM books ORDER BY pages DESC LIMIT 0;
Empty set (0.00 sec)

mysql> SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;
+-------------------------------------------+-------+
| title                                     | pages |
+-------------------------------------------+-------+
| The Amazing Adventures of Kavalier & Clay |   634 |
+-------------------------------------------+-------+
1 row in set (0.00 sec)

mysql> SELECT CONCAT(title, ' - ', released_year) FROM books ORDER BY released_year DESC LIMIT 3;
+-------------------------------------+
| CONCAT(title, ' - ', released_year) |
+-------------------------------------+
| Lincoln In The Bardo - 2017         |
| Norse Mythology - 2016              |
| 10% Happier - 2014                  |
+-------------------------------------+
3 rows in set (0.00 sec)

mysql> SELECT CONCAT(title, ' - ', released_year) AS summaryFROM books ORDER BY released_year DESC LIMIT 3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'books ORDER BY released_year DESC LIMIT 3' at line 1
mysql> SELECT CONCAT(title, ' - ', released_year) AS summary FROM books ORDER BY released_year DESC LIMIT 3;
+-----------------------------+
| summary                     |
+-----------------------------+
| Lincoln In The Bardo - 2017 |
| Norse Mythology - 2016      |
| 10% Happier - 2014          |
+-----------------------------+
3 rows in set (0.00 sec)

mysql> SELECT title, author_lname FROM books WHERE author_lname LIKE '& &';
Empty set (0.00 sec)

mysql> SELECT title, author_lname FROM books WHERE author_lname LIKE '&\ &';
Empty set (0.00 sec)

mysql> SELECT title, author_lname FROM books WHERE author_lname LIKE '&_ &';
Empty set (0.01 sec)

mysql> SELECT title, author_lname FROM books WHERE author_lname LIKE '&_&';
Empty set (0.00 sec)

mysql> SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';
+----------------------+----------------+
| title                | author_lname   |
+----------------------+----------------+
| Oblivion: Stories    | Foster Wallace |
| Consider the Lobster | Foster Wallace |
+----------------------+----------------+
2 rows in set (0.00 sec)

mysql> SELECT title, released_year, stock_quantity FROM books ORDER BY stock_quantity LIMIT 3;
+-----------------------------------------------------+---------------+----------------+
| title                                               | released_year | stock_quantity |
+-----------------------------------------------------+---------------+----------------+
| Where I'm Calling From: Selected Stories            |          1989 |             12 |
| American Gods                                       |          2001 |             12 |
| What We Talk About When We Talk About Love: Stories |          1981 |             23 |
+-----------------------------------------------------+---------------+----------------+
3 rows in set (0.00 sec)

mysql> SELECT title, author_lname FROM books ORDER BY author_lname, title;
+-----------------------------------------------------+----------------+
| title                                               | author_lname   |
+-----------------------------------------------------+----------------+
| What We Talk About When We Talk About Love: Stories | Carver         |
| Where I'm Calling From: Selected Stories            | Carver         |
| The Amazing Adventures of Kavalier & Clay           | Chabon         |
| White Noise                                         | DeLillo        |
| A Heartbreaking Work of Staggering Genius           | Eggers         |
| A Hologram for the King: A Novel                    | Eggers         |
| The Circle                                          | Eggers         |
| Consider the Lobster                                | Foster Wallace |
| Oblivion: Stories                                   | Foster Wallace |
| American Gods                                       | Gaiman         |
| Coraline                                            | Gaiman         |
| Norse Mythology                                     | Gaiman         |
| 10% Happier                                         | Harris         |
| fake_book                                           | Harris         |
| Interpreter of Maladies                             | Lahiri         |
| The Namesake                                        | Lahiri         |
| Lincoln In The Bardo                                | Saunders       |
| Just Kids                                           | Smith          |
| Cannery Row                                         | Steinbeck      |
+-----------------------------------------------------+----------------+
19 rows in set (0.00 sec)

mysql> SELECT UPPER( CONCAT('my favorite author is ', author_fname, ' ', author_lname)) ASyell FROM books ORDER BY author_lname;
+--------------------------------------------+
| ASyell                                     |
+--------------------------------------------+
| MY FAVORITE AUTHOR IS RAYMOND CARVER       |
| MY FAVORITE AUTHOR IS RAYMOND CARVER       |
| MY FAVORITE AUTHOR IS MICHAEL CHABON       |
| MY FAVORITE AUTHOR IS DON DELILLO          |
| MY FAVORITE AUTHOR IS DAVE EGGERS          |
| MY FAVORITE AUTHOR IS DAVE EGGERS          |
| MY FAVORITE AUTHOR IS DAVE EGGERS          |
| MY FAVORITE AUTHOR IS DAVID FOSTER WALLACE |
| MY FAVORITE AUTHOR IS DAVID FOSTER WALLACE |
| MY FAVORITE AUTHOR IS NEIL GAIMAN          |
| MY FAVORITE AUTHOR IS NEIL GAIMAN          |
| MY FAVORITE AUTHOR IS NEIL GAIMAN          |
| MY FAVORITE AUTHOR IS DAN HARRIS           |
| MY FAVORITE AUTHOR IS FREIDA HARRIS        |
| MY FAVORITE AUTHOR IS JHUMPA LAHIRI        |
| MY FAVORITE AUTHOR IS JHUMPA LAHIRI        |
| MY FAVORITE AUTHOR IS GEORGE SAUNDERS      |
| MY FAVORITE AUTHOR IS PATTI SMITH          |
| MY FAVORITE AUTHOR IS JOHN STEINBECK       |
+--------------------------------------------+
19 rows in set (0.00 sec)

mysql> SELECT UPPER( CONCAT('my favorite author is ', author_fname, ' ', author_lname, '!')) AS yell FROM books ORDER BY author_lname;
+---------------------------------------------+
| yell                                        |
+---------------------------------------------+
| MY FAVORITE AUTHOR IS RAYMOND CARVER!       |
| MY FAVORITE AUTHOR IS RAYMOND CARVER!       |
| MY FAVORITE AUTHOR IS MICHAEL CHABON!       |
| MY FAVORITE AUTHOR IS DON DELILLO!          |
| MY FAVORITE AUTHOR IS DAVE EGGERS!          |
| MY FAVORITE AUTHOR IS DAVE EGGERS!          |
| MY FAVORITE AUTHOR IS DAVE EGGERS!          |
| MY FAVORITE AUTHOR IS DAVID FOSTER WALLACE! |
| MY FAVORITE AUTHOR IS DAVID FOSTER WALLACE! |
| MY FAVORITE AUTHOR IS NEIL GAIMAN!          |
| MY FAVORITE AUTHOR IS NEIL GAIMAN!          |
| MY FAVORITE AUTHOR IS NEIL GAIMAN!          |
| MY FAVORITE AUTHOR IS DAN HARRIS!           |
| MY FAVORITE AUTHOR IS FREIDA HARRIS!        |
| MY FAVORITE AUTHOR IS JHUMPA LAHIRI!        |
| MY FAVORITE AUTHOR IS JHUMPA LAHIRI!        |
| MY FAVORITE AUTHOR IS GEORGE SAUNDERS!      |
| MY FAVORITE AUTHOR IS PATTI SMITH!          |
| MY FAVORITE AUTHOR IS JOHN STEINBECK!       |
+---------------------------------------------+
19 rows in set (0.00 sec)
