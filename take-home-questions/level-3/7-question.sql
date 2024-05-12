-- Write a query that lists all movie titles where Scarlett Johansson and Chris Evans starred together. 

SELECT movies.title
FROM movies
JOIN stars ON stars.movie_id = movies.id
JOIN people ON people.id = stars.person_id
WHERE people.name IN ('Scarlett Johansson', 'Chris Evans')
GROUP BY movies.title
HAVING COUNT(DISTINCT people.name) = 2;