// 3. Write a Node.js script that acess movie database. The script should return information about the movie which user is looking for - title, year, stars who acted in that movie.


import sqlite from "better-sqlite3"

const db = sqlite("./movies/movies.db")

function getInformation(movieName) {
    const statement = db.prepare('SELECT movies.title, movies.year, people.name AS actors FROM movies JOIN stars ON stars.movie_id = movies.id JOIN directors ON directors.movie_id = movies.id JOIN people ON people.id = stars.person_id WHERE title = ?')
    const result = statement.all(movieName)
    return result
}

console.log(getInformation("8 Mile"));
