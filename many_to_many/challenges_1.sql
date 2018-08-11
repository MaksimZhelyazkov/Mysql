-- \\\\\\\\\\\\\\\\ CHALLENGE 1 ////////////
-- SELECT title, rating FROM series
-- JOIN reviews
--     ON series.id = reviews.series_id;

-- \\\\\\\\\\\\\\\\ CHALLENGE 2 - AVG rating ////////////
-- SELECT 
--     title, 
--     AVG(rating) AS avg_rating
-- FROM series
-- JOIN reviews
--     ON series.id = reviews.series_id
-- GROUP BY series.id
-- ORDER BY avg_rating;

-- \\\\\\\\\\\\\\\\ CHALLENGE 3  ////////////
-- SELECT 
--     first_name,
--     last_name,
--     rating
-- FROM reviewers
-- JOIN reviews
--     ON reviewers.id = reviews.reviewer_id;

-- \\\\\\\\\\\\\\\\ CHALLENGE 4 -  unreviewed series ////////////
-- SELECT title AS unreviewed_series
-- FROM series
-- LEFT JOIN reviews
--     ON series.id = reviews.series_id
-- WHERE rating IS NULL;

-- \\\\\\\\\\\\\\\\ CHALLENGE 5 -  genre AVG ratings ////////////
-- SELECT 
--     genre,
--     ROUND(
--         AVG(rating),
--         2
--     ) AS avg_rating
-- FROM series
-- INNER JOIN reviews
--     ON series.id = reviews.series_id
--     GROUP BY genre;

-- \\\\\\\\\\\\\\\\ CHALLENGE 6 - reviewer stats ////////////
-- SELECT
--     first_name,
--     last_name,
--     COUNT(rating) AS COUNT,
--     IFNULL(MIN(rating), 0) AS MIN,
--     IFNULL(MAX(rating), 0) AS MAX,
--     IFNULL(AVG(rating), 0) AS AVG,
--     IF(COUNT(rating) >= 1, 'ACTIVE', 'INACTIVE') AS STATUS
--     -- CASE
--     --     WHEN COUNT(rating) >= 1 THEN 'ACTIVE'
--     --     ELSE 'INACTIVE'
--     -- END AS STATUS
-- FROM reviewers
-- LEFT JOIN reviews
--     ON reviewers.id = reviews.reviewer_id
-- GROUP BY reviewers.id;

-- \\\\\\\\\\\\\\\\ CHALLENGE 7 - 3 tables in action ////////////
SELECT
    title,
    rating,
    CONCAT(first_name, ' ', last_name) AS reviewer
FROM reviewers
INNER JOIN reviews
    ON reviewers.id = reviews.reviewer_id
INNER JOIN series
    ON series.id = reviews.series_id
    ORDER BY title;