-- 1. List all movies and any associated director names, ensuring that movies without a director are also included. Provide the movie title, year, and the director's name. Movies should be ordered by release year in descending order.

SELECT movies.title, movies.year, people.name 
    FROM movies
    LEFT JOIN directors ON directors.movie_id = movies.id
    LEFT JOIN people ON directors.person_id = people.id
    ORDER BY movies.year DESC
    LIMIT 3000;

-- 2. List movies that have no recorded ratings and were released after 2010. 

SELECT title 
    FROM movies
    LEFT JOIN ratings ON ratings.movie_id = movies.id
    WHERE year > 2010
    AND ratings.rating IS NULL;