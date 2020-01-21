SELECT 
DISTINCT author_fname,author_lname
from books;

SELECT 
DISTINCT author_lname
from books;

SELECT 
DISTINCT CONCAT(author_fname," ",author_lname)
from books;