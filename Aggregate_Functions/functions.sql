mysql> SELECT COUNT(*) FROM books;
+----------+
| COUNT(*) |
+----------+
|       19 |
+----------+
1 row in set (0.00 sec)

mysql> SELECT released_year, COUNT(*) FROM books GROUP BY released_year ORDER BY released_year;
+---------------+----------+
| released_year | COUNT(*) |
+---------------+----------+
|          1945 |        1 |
|          1981 |        1 |
|          1985 |        1 |
|          1989 |        1 |
|          1996 |        1 |
|          2000 |        1 |
|          2001 |        3 |
|          2003 |        2 |
|          2004 |        1 |
|          2005 |        1 |
|          2010 |        1 |
|          2012 |        1 |
|          2013 |        1 |
|          2014 |        1 |
|          2016 |        1 |
|          2017 |        1 |
+---------------+----------+
16 rows in set (0.00 sec)

mysql> SELECT SUM(stock_quantity) FROM books;
+---------------------+
| SUM(stock_quantity) |
+---------------------+
|                2450 |
+---------------------+
1 row in set (0.00 sec)

mysql> SELECT CONCAT(author_fname,' ',  author_lname) as Author, AVG(released_year) as AVG FROM books GROUP BY author_fname, author_lname;
+----------------------+-----------+
| Author               | AVG       |
+----------------------+-----------+
| Jhumpa Lahiri        | 1999.5000 |
| Neil Gaiman          | 2006.6667 |
| Dave Eggers          | 2008.6667 |
| Michael Chabon       | 2000.0000 |
| Patti Smith          | 2010.0000 |
| Raymond Carver       | 1985.0000 |
| Don DeLillo          | 1985.0000 |
| John Steinbeck       | 1945.0000 |
| David Foster Wallace | 2004.5000 |
| Dan Harris           | 2014.0000 |
| Freida Harris        | 2001.0000 |
| George Saunders      | 2017.0000 |
+----------------------+-----------+
12 rows in set (0.00 sec)

mysql> SELECT Concat(author_fname, ' ', author_lname) AS NAME                                -> FROM   books 
    -> WHERE  pages = (SELECT Max(pages) 
    ->                 FROM   books); 
+----------------+
| NAME           |
+----------------+
| Michael Chabon |
+----------------+
1 row in set (0.01 sec)

SELECT released_year as year, COUNT(*) as '# books', AVG(pages) AS 'avg pages' FROM books GROUP BY released_year ORDER BY released_year;
+------+---------+-----------+
| year | # books | avg pages |
+------+---------+-----------+
| 1945 |       1 |  181.0000 |
| 1981 |       1 |  176.0000 |
| 1985 |       1 |  320.0000 |
| 1989 |       1 |  526.0000 |
| 1996 |       1 |  198.0000 |
| 2000 |       1 |  634.0000 |
| 2001 |       3 |  443.3333 |
| 2003 |       2 |  249.5000 |
| 2004 |       1 |  329.0000 |
| 2005 |       1 |  343.0000 |
| 2010 |       1 |  304.0000 |
| 2012 |       1 |  352.0000 |
| 2013 |       1 |  504.0000 |
| 2014 |       1 |  256.0000 |
| 2016 |       1 |  304.0000 |
| 2017 |       1 |  367.0000 |
+------+---------+-----------+
16 rows in set (0.00 sec)

