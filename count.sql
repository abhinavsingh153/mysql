-- SELECT COUNT(*) from books;

-- SELECT COUNT(author_fname) from books;

-- SELECT COUNT(DISTINCT author_fname) from books;

-- SELECT COUNT(DISTINCT author_lname) from books;

-- SELECT COUNT(DISTINCT author_fname,author_lname) FROM books;

SELECT COUNT(title) from books WHERE title LIKE "%the%";