-- Step 1: Create database
CREATE DATABASE amazon_db;

-- Step 2: Use the database
USE amazon_db;
-- Step 3: Create table based on CSV structure
CREATE TABLE amazon_data (
    show_id VARCHAR(10) PRIMARY KEY,
    type VARCHAR(20),
    title VARCHAR(255),
    director VARCHAR(255),
    cast TEXT,
    country VARCHAR(100),
    date_added VARCHAR(50),
    release_year INT,
    rating VARCHAR(20),
    duration VARCHAR(50),
    listed_in TEXT,
    description TEXT
);

-- 1. View first 10 rows
SELECT * FROM amazon_data LIMIT 10;

-- 2. Count total number of records
SELECT COUNT(*) AS total_records FROM amazon_data;

-- 3. Find all unique content types
SELECT DISTINCT type FROM amazon_data;

-- 4. Count how many movies vs TV shows
SELECT type, COUNT(*) AS total_count
FROM amazon_data
GROUP BY type;

-- 5. Find all shows released in 2020
SELECT * FROM amazon_data
WHERE release_year = 2020;

-- 6. Top 10 most recently added shows
SELECT * FROM amazon_data
ORDER BY STR_TO_DATE(date_added, '%M %d, %Y') DESC
LIMIT 10;

-- 7. Shows by a specific director
SELECT * FROM amazon_data
WHERE director LIKE '%Christopher Nolan%';

-- 8. Count of shows per country
SELECT country, COUNT(*) AS total_shows
FROM amazon_data
GROUP BY country
ORDER BY total_shows DESC;

-- 9. All shows with rating 'PG-13'
SELECT title, rating FROM amazon_data
WHERE rating = 'PG-13';

-- 10. Find movies longer than 120 minutes
SELECT * FROM amazon_data
WHERE type = 'Movie' AND CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED) > 120;

-- 11. All TV Shows with more than 5 seasons
SELECT * FROM amazon_data
WHERE type = 'TV Show' AND CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED) > 5;

-- 12. Shows containing 'Drama' in their genre
SELECT * FROM amazon_data
WHERE listed_in LIKE '%Drama%';

-- 13. Find shows without a listed director
SELECT * FROM amazon_data
WHERE director IS NULL OR director = '';

-- 14. Count shows per year of release
SELECT release_year, COUNT(*) AS total
FROM amazon_data
GROUP BY release_year
ORDER BY release_year DESC;

-- 15. Delete duplicate rows based on title and release year
DELETE t1 FROM amazon_data t1
JOIN amazon_data t2
ON t1.title = t2.title
AND t1.release_year = t2.release_year
AND t1.show_id > t2.show_id;
