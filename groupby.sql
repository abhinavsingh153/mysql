-- SELECT author_lname,COUNT(*) from books GROUP BY author_lname; 

-- SELECT title, author_fname ,author_lname from books;

-- SELECT title, author_fname ,author_lname from books GROUP BY author_lname;

-- SELECT title, author_fname ,author_lname,COUNT(*) from books GROUP BY author_lname;

SELECT title, author_fname ,author_lname from books;

SELECT author_fname ,author_lname,COUNT(*) from books GROUP BY author_fname,author_lname;

SELECT released_year,COUNT(*) from books GROUP BY released_year;

SELECT released_year,
CONCAT(
    "IN ", released_year," ",COUNT(*) , " book(s) were released."
)
AS "books count"
from books GROUP BY released_year;