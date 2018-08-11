-- 1. 
-- SELECT 10 != 10; - 0
-- SELECT 15 > 14 && 99 - 5 <= 94; - 1
-- SELECT 1 IN (5,3) || 9 BETWEEN 8 AND 10; -1

-- 2. Select All Books Written Before 1980 (non inclusive) 
-- SELECT * FROM books WHERE released_year < 1980;

-- 3. Select All Books Written By Eggers Or Chabon
-- SELECT * FROM books WHERE author_lname = 'eggers' || author_lname = 'Chabon'; 

-- 4. Select All Books Written By Lahiri, Published after 2000
-- SELECT * FROM books WHERE author_lname = 'Lahiri' && released_year > 2000;

-- 5. Select All books with page counts between 100 and 200
-- SELECT * FROM books WHERE pages BETWEEN 100 AND 200;

-- 6. Select all books where author_lname  starts with a 'C' or an 'S''
-- SELECT * FROM books WHERE author_lname LIKE ('c%' || 's%');

7. If title contains 'stories'   -> Short Stories; Just Kids and A Heartbreaking Work  -> Memoir; Everything Else -> Novel
-- SELECT title, author_lname, released_year,
--     CASE
--     WHEN title LIKE '%stories%' THEN 'Short STORIES' 
--     WHEN title LIKE 'Just kids%' || title LIKE 'A Heartbreaking work%' THEN 'Memoir'
--     ELSE 'Novel'
--     END AS TYPE
-- FROM books;

8. Print What is shown on image; 
SELECT author_fname, author_lname,
    CASE
        WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
        END AS COUNT
FROM books
GROUP BY author_lname, author_fname;