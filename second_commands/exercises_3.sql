-- 1. Print the number of books in the database: 
-- SELECT COUNT(*) AS 'number of books' FROM books;

-- 2. Print out how many books were released in each year:
-- SELECT COUNT(*) AS 'number of books' FROM books GROUP BY released_year;

-- 3. Print out the total number of books in stock:
-- SELECT SUM(stock_quantity) FROM books;

-- 4. Find the average released_year for each author:
-- SELECT CONCAT(author_fname, ' ', author_lname, ' - ', AVG(released_year)) AS 'average released year for each author' FROM books GROUP BY author_lname, author_fname;

-- 5. Find the full name of the author who wrote the longest book:
-- SELECT author_fname, author_lname, pages FROM books 
-- WHERE pages = (SELECT MAX(pages) FROM books); 

-- SELECT author_fname, author_lname, pages FROM books ORDER BY pages DESC LIMIT 1;
 
-- 6. Print out the number of books realsed each year and tjeor average pages: 

-- SELECT released_year AS year, COUNT(*) AS '# books', AVG(pages) AS 'avg pages'
-- FROM books
-- GROUP BY released_year;
