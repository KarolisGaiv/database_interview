-- List all the movies directed by Frank Darabont and their release years. Order the results by the movie's release year in descending order.


SELECT title, year FROM movies  
    JOIN directors ON directors.movie_id = movies.id
    JOIN people ON people.id = directors.person_id
    WHERE people.name = 'Frank Darabont'
    ORDER BY year DESC;