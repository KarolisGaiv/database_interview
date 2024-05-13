// Write a Node.js script that retrieves all movies from the database, then filters them to only include those released in the last 5 years and with a rating above 8.0. The script should display the movie title, year, and rating in the console.

import sqlite from "better-sqlite3"
const db = sqlite("./movies/movies.db")

const statement = db.prepare('SELECT movies.title, movies.year, ratings.rating FROM movies JOIN ratings ON ratings.movie_id = movies.id')
const data = statement.all()
const filteredData = data.filter( (movie) => movie.year >= 2019 && movie.rating > 8.0)

console.log(filteredData);
