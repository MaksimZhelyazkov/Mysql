-- \\\\\\\\\\\\ 1. Finding 5 oldest users ////////////

-- SELECT *
-- FROM users 
-- ORDER BY created_at ASC LIMIT 5;

-- \\\\\\\\\\\\ 2. What day of the week do most users register at ////////////
-- SELECT 
-- DATE_FORMAT(created_at, '%W') AS day_of_week,
-- COUNT(*) AS total
-- FROM users
-- GROUP BY day_of_week
-- ORDER BY total DESC;

    -- OR
-- SELECT 
--     DAYNAME(created_at) AS day,
--     COUNT(*) AS total
-- FROM users
-- GROUP BY day
-- ORDER BY total DESC
-- LIMIT 2;

-- \\\\\\\\\\\\ 3. Which users never posted a photo////////////
-- SELECT username, 
-- CONCAT(image_url, photos.created_at) AS 'never posted'
-- FROM users
-- LEFT JOIN photos
--     ON users.id = photos.user_id
-- WHERE photos.id IS NULL;

-- \\\\\\\\\\\\ 4. Which photo has the most likes////////////

-- SELECT 
-- username,
-- photos.id,
-- image_url,
-- COUNT(*) AS total
-- FROM likes
-- JOIN photos
--     ON likes.photo_id = photos.id 
-- JOIN users
--     ON photos.user_id = users.id
-- GROUP BY photos.id
-- ORDER BY total DESC
-- LIMIT 1;

-- -- \\\\\\\\\\\\ 5. Calculate average number of photos per user////////////

-- total number of photos/total number of users

-- SELECT (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users) AS AVG;

-- -- \\\\\\\\\\\\ 6. TOP 5 most popular hashtags////////////

-- SELECT 
-- tags.tag_name,
-- COUNT(*) as total_tags
-- FROM tags 
-- JOIN photo_tags
--     ON tags.id = photo_tags.tag_id
-- GROUP BY tags.id
-- -- ORDER BY total_tags DESC
-- -- LIMIT 5;

-- \\\\\\\\\\\\ 7.  find users who have liked every single photo on the site////////////

-- SELECT 
--     username,
--     COUNT(*) AS total_likes
-- FROM users
-- JOIN likes
--     ON users.id = likes.user_id
-- GROUP BY likes.user_id
-- HAVING total_likes = (SELECT COUNT(*) FROM photos);





