-- SELECT title FROM books 
-- WHERE 
-- 	title LIKE "%stories%"

-- SELECT title , pages FROM books ORDER BY pages DESC LIMIT 1;

-- SELECT CONCAT_WS ("-",title , released_year) AS summary FROM books ORDER BY released_year DESC LIMIT 3;

-- SELECT title , author_lname FROM books WHERE author_lname LIKE "% %";
 
-- SELECT title , author_lname FROM boks ORDER BY author_lname , title;

SELECT CONCAT('MY FAVOURITE AUTHOR IS ' , UPPER(author_fname), ' ' , UPPER(author_lname) , ' !')
FROM books ORDER BY author_lname;