-- DISTINCT - gives all the unique entries in the table 

-- SELECT author_lname FROM books;
 
-- SELECT DISTINCT author_lname FROM books;
 
-- SELECT author_fname, author_lname FROM books;
 
-- SELECT DISTINCT CONCAT(author_fname,' ', author_lname) FROM books;
 
SELECT DISTINCT author_fname, author_lname FROM books;