-- Count all the times that Martin Scorsese directed.

SELECT COUNT(movie_id) FROM directors
    JOIN people ON people.id = directors.person_id
    WHERE people.name = 'Martin Scorsese';