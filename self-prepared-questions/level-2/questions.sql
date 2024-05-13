-- 1. Calculate the average rating for movies released between 2012 and 2022.
SELECT AVG(rating) 
    FROM ratings
    JOIN movies ON movies.id = ratings.movie_id
    WHERE movies.year BETWEEN 2012 AND 2022;


-- 2. List all distinct years in which movies directed by either Steven Spielberg or Christopher Nolan were released. Ensure the list is ordered from the most recent to the oldest year.

SELECT DISTINCT year 
    FROM movies
    JOIN directors ON directors.movie_id = movies.id
    JOIN people ON people.id = directors.person_id
    WHERE people.name IN ('Steven Spielberg', 'Christopher Nolan')
    ORDER BY year DESC;


-- 3. List number of times Eminem appeared in movies.
SELECT COUNT(*) 
    FROM stars
    JOIN people ON people.id = stars.person_id
    WHERE people.name = 'Eminem';
