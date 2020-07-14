
-- SELECT COUNT(title) FROM books;

-- SELECT COUNT(*) , released_year FROM books GROUP BY released_year ;

-- SELECT SUM(stock_quantity) FROM books;


-- SELECT AVG(released_year) , CONCAT(author_fname , ' ', author_lname) FROM books
-- GROUP BY author_fname , author_lname;

-- SELECT CONCAT(author_fname , ' ' , author_lname)  , pages FROM books ORDER BY pages DESC LIMIT 1;

-- SELECT CONCAT(author_fname , ' ' , author_lname), pages FROM books
-- WHERE pages= (SELECT MAX(pages) FROM books);

SELECT released_year , COUNT(title) , AVG(pages) 
FROM books GROUP BY released_year;