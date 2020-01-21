SELECT AVG(released_year) from books;

SELECT AVG(pages) from books;

-- find the average number if pages written by each author

SELECT CONCAT(author_fname , " " , author_lname) AS "auhtor",
        AVG(pages) ,
        COUNT(title) AS books
from books 
GROUP BY author_fname , 
         author_lname;

-- Find avg stock qty for books released in the same year

SELECT released_year,AVG(stock_quantity), COUNT(title) AS "number of books "
from books
GROUP BY released_year
ORDER BY released_year ASC;