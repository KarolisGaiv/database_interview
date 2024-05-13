// Write a Node.js script that reads the local .env file to get a FAVORITE_DIRECTOR variable and access the movie database. The script should return a list of movies the favorite director directed. The list should be ordered by movie rating in descending order. Add a local .env file to your project and add the FAVORITE_DIRECTOR variable to it.

import sqlite from "better-sqlite3"
import dotenv from 'dotenv';
dotenv.config();

const director = process.env.FAVORITE_DIRECTOR
const db = sqlite("./movies/movies.db")

function getMoviesFromDirector(director) {
    const statement = db.prepare('SELECT title FROM movies JOIN directors ON directors.movie_id = movies.id JOIN people ON people.id = directors.person_id JOIN ratings ON ratings.movie_id = movies.id WHERE people.name = ? ORDER BY ratings.rating DESC') ;
    const result = statement.all(director)
    return result
}

console.log(getMoviesFromDirector(director));