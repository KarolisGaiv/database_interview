-- List all the people with the first name "Quentin", but who are not "Quentin Tarantino". You can assume that names start with a first name.

SELECT DISTINCT name FROM people
    WHERE name LIKE ('Quentin%')
    AND
    name IS NOT ('Quentin Tarantino');