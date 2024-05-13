-- Write a SQL script that creates a new table reviews with columns for review_id (primary key), movie_id (foreign key referencing movies.id), rating (REAL), and comment (TEXT). Ensure that the script creates appropriate foreign key constraints. Additionally, wrap the entire creation process within a transaction to ensure that the table is either fully created or not created at all in case of errors.

BEGIN TRANSACTION;

CREATE TABLE reviews (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    movie_id INTEGER NOT NULL,
    rating REAL NOT NULL,
    comment TEXT,
    FOREIGN KEY(movie_id) REFERENCES movies(id)
);

COMMIT;