// Write Node.js script for pagination. Write a query that retrieves movie titles and their release years, ordered by the release year in descending order. The query should support pagination, allowing the user to specify both a 'page number' and a 'page size'. The page number should start from 1.

import sqlite from "better-sqlite3"

const db = sqlite("./movies/movies.db")

function getInformation(pageSize, pageNumber) {
    const offset = pageSize * (pageNumber - 1)
    const statement = db.prepare('SELECT title, year FROM movies ORDER BY year DESC LIMIT ? OFFSET ?')
    const result = statement.all(pageSize, offset)
    return result
}

console.log(getInformation(10, 13));