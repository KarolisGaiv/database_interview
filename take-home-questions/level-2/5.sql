-- List star names and the number of movies they have appeared in (acted). List only the stars that have appeared in at least 300 movies.


SELECT name, COUNT(stars.movie_id) AS movie_count
    FROM people
    JOIN stars ON stars.person_id = people.id
    GROUP BY people.id
    HAVING COUNT(stars.movie_id) >= 300;
