-- List all the movies rated above 8.5 that feature a star born after 2005. Order the list by the movie's rating in descending order. You should return the movie title, rating, and the star's name. A movie can have multiple stars, which means that a movie can appear multiple times in the result set.


SELECT movies.title, ratings.rating, people.name 
    FROM movies
    JOIN ratings ON ratings.movie_id = movies.id
    JOIN stars ON stars.movie_id = ratings.movie_id
    JOIN people ON people.id = stars.person_id
    WHERE ratings.rating > 8.5
    AND 
    people.birth > 2005;
