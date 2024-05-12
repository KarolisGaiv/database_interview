-- Write a query that identifies individuals who have both directed and starred in movies, but not necessarily the same ones. List their names and the titles of movies they directed and those they acted in, respectively.


SELECT DISTINCT name, movies.title
    FROM people
    JOIN directors ON directors.person_id = people.id
    JOIN stars ON stars.person_id = people.id
    JOIN movies ON movies.id = directors.movie_id
    WHERE stars.person_id = people.id
    AND directors.person_id = people.id;