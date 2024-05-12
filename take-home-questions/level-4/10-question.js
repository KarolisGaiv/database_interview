// In 2023, Christopher Nolan and Greta Gerwig each released a new movie. These movies already exist in the database, but they have no ratings. Write a single query to add a rating to one of these movies. For these movies, you can assume there is only one movie with the same title and year in the database.

import sqlite from "better-sqlite3"
const db = sqlite("./movies/movies.db")

// votes is required argument based on current ratings table schema.
function insertRating(movie, rating, votes) {
    const allowedMovies = ['Oppenheimer', 'Barbie'];

    if (!allowedMovies.includes(movie)) {
        throw new Error("Incorrect movie choice")
    }

    const statement = db.prepare('INSERT INTO ratings (movie_id, rating, votes) VALUES ((SELECT id FROM movies WHERE title = ? AND year = 2023), ?, ?)')

    const result = statement.run(movie, rating, votes)

    return result
}
