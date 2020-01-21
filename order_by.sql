SELECT 
author_lname from books;

SELECT 
author_lname 
from books ORDER BY author_lname;

SELECT title from books ORDER BY title;

SELECT released_year from books ORDER BY released_year;

SELECT released_year from books ORDER BY released_year DESC;

SELECT title,released_year,pages from books ORDER BY released_year;

SELECT title,released_year,pages from books ORDER BY released_year DESC;

SELECT title,author_fname,author_lname from books ORDER BY 2;

SELECT author_fname, author_lname FROM books 
ORDER BY author_lname, author_fname;