-- SELECT sum(pages) from books;

-- SELECT sum(released_year) from books;

-- FInd the sum of allth pages each author has written

SELECT CONCAT(author_fname ," ",author_lname) AS "author" ,SUM(pages)  from books GROUP BY author_fname,author_lname;

-- FInd the which authorhas writtwn the most number of pages

SELECT CONCAT(author_fname, " ",author_lname),SUM(pages) from books 
GROUP BY author_fname, author_lname
ORDER BY pages DESC LIMIT 1;

-- USING SUBQUERY

SELECT CONCAT(auhtor_fname , " ", auhtor_lname)  AS "author", pages
from books 
WHERE pages = (
                SELECT SUM(pages) from books GROUP BY auhtor_fname,author_lname from books 
                ORDER BY pages DESC LIMIT 1
               );


