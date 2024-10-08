-- Challenge 2
-- 1.1 Total number of films
SELECT 
    COUNT(*) AS total_films
FROM film;

-- 1.2 Number of films per rating
SELECT 
    rating, 
    COUNT(*) AS num_films
FROM film
GROUP BY rating;

-- 1.3 Number of films per rating, ordered descending
SELECT 
    rating, 
    COUNT(*) AS num_films
FROM film
GROUP BY rating
ORDER BY num_films DESC;

-- 2.1 Mean film duration per rating
SELECT 
    rating, 
    ROUND(AVG(length), 2) AS avg_duration
FROM film
GROUP BY rating
ORDER BY avg_duration DESC;

-- 2.2 Ratings with a mean duration over two hours
SELECT 
    rating, 
    ROUND(AVG(length), 2) AS avg_duration
FROM film
GROUP BY rating
HAVING avg_duration > 120;

-- 3. Bonus: Unique last names in the actor table
SELECT 
    last_name
FROM actor
GROUP BY last_name
HAVING COUNT(*) = 1;