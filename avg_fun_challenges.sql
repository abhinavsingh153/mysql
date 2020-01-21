-- print the number of books in the database.

SELECT COUNT(DISTINCT title) from books;

-- print gow many books were released in eaxh year

SELECT COUNT( DISTINCT title), released_year from books GROUP BY released_year;

SELECT COUNT(*), released_year from books GROUP BY released_year;


-- print out the totla number of books in stock.

SELECT SUM(stock_quantity) from books;

-- FInd the avg re;leased year for each book

SELECT CONCAT(author_fname ," ", author_lname) AS auhtor, AVG(released_year) 
from books GROUP BY author_fname , author_lname;

-- Find the full name of the author who wrote the longest book.

SELECT CONCAT(author_fname, " ",author_lname) AS "auhtor" , pages from books 
ORDER BY pages DESC LIMIT 1;

-- using subquery

SELECT CONCAT(author_fname, " ",author_lname) AS "auhtor" , pages 
from books
WHERE pages=(SELECT MAX(pages) from books);

-- print the data of number of books printed each year and the avg number of pages .

SELECT DISTINCT released_year , COUNT(title) AS "#books" , AVG(pages) AS "avg"
from books GROUP BY released_year ORDER BY released_year;

SELECT DISTINCT released_year , COUNT(title) AS "#books" , AVG(pages) AS "avg"
from books GROUP BY released_year ORDER BY released_year;