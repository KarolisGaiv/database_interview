-- 1. Display the titles of movies that starts with the word 'Life' in their title. Only unique names should appear
SELECT DISTINCT title FROM movies
    WHERE title LIKE 'Life%';


-- 2. Display title and year of '8 Mile' movie.
SELECT title, year FROM movies
    WHERE title = '8 Mile';


-- 3. Show title and year of movies released after 2020. Show only 300 results. 
SELECT title, year FROM movies
    WHERE year >= 2020
    LIMIT 300;