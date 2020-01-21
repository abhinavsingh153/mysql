-- SELECT MIN(released_year) from books;

-- SELECT MIN(pages) from books;

-- SELECT MAX(pages) from books;

-- SELECT MAX(pages) from books;

-- Query for printing the title of book with max pages

-- SELECT MAX(pages), title from books; -- invalid solution

-- SELECT * from books WHERE pages =(SELECT MAX(pages) from books);

-- title,pages from books WHERE pages =(SELECT MAX(pages) from books);

-- SELECT * from books WHERE pages =(SELECT MIN(pages) from books);

-- SELECT title,pages from books WHERE pages =(SELECT MIN(pages) from books);

-- SELECT title,pages from books ORDER BY pages ASC LIMIT 1;

-- SELECT title,pages from books ORDER BY pages DESC LIMIT 1;

--              MIN AND MAX with GROUP BY

-- FIND th eyearin wich each author published their 1st book;

-- SELECT DISTINCT(author_fname ,author_lname) from books;

-- SELECT author_fname ,author_lname,released_year,MIN(released_year), COUNT(title)
-- from books
-- GROUP BY author_fname,author_lname;

-- find the longest page count for each author

SELECT author_fname, author_lname , MAX(pages) 
from books 
GROUP BY author_lname,author_fname ORDER BY pages ASC ;

-- find the longest page count for each author

SELECT author_fname, author_lname , MIN(pages) 
from books 
GROUP BY author_lname,author_fname;

SELECT CONCAT(author_fname," ", author_lname) AS "author",
MAX(pages) AS "Longest book" 
from books
GROUP BY author_fname, author_lname ORDER BY pages DESC;