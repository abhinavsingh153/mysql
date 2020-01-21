SELECT title,released_year 
from books ORDER BY released_year DESC LIMIT 5;

SELECT title,released_year
from books ORDER BY 2 DESC LIMIT 5;

SELECT * FROM books LIMIT 0,5;

SELECT * FROM books LIMIT 5,45678476738;