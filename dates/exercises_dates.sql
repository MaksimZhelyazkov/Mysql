-- 1. Use for CHAR?
-- For text we know has a fixed lenght - State, Sex, Yes/No, Abreviations, etc. 

-- 2. Price - Which Datatype?
-- Decimal (6, 2) - first number shows numbers after decimal point, the cecond the numbers after it;
-- 6, 2 - < 1,000,000

-- 3. Difference between Datetime and TimeStamp ?
-- TS - much slower range, DT is twice as large size as TS; 
-- TS used exclusively about metadata about when something was created/updates, etc.

-- 4. Print Current time
-- Select CURTIME();

-- 5. Print Current date
-- Select CURDATE();

-- 6. Print Current date of the week
-- SELECT DAYOFWEEK(CURDATE()) - 1;
--         OR
-- SELECT DATE_FORMAT(NOW(), '%w') + 1;
        
-- 7. Print current date of the week with words
-- SELECT DAYNAME(NOW());
--     OR
-- SELECT DATE_FORMAT(NOW(), '%W');

-- 8. Print out current day and time with format - mm/dd/yyyy
-- SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');

-- 9. Print out current day and time with format - 'April 1st at 10:18'
-- SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i');

-- 10 Creating a table with timestamp:
-- CREATE TABLE tweets(
--     content VARCHAR(140),
--     username VARCHAR(20),
--     created_at TIMESTAMP DEFAULT NOW()
-- );
 
-- INSERT INTO tweets (content, username) VALUES('this is my first tweet', 'coltscat');
-- SELECT * FROM tweets;
 
-- INSERT INTO tweets (content, username) VALUES('this is my second tweet', 'coltscat');
-- SELECT * FROM tweets;