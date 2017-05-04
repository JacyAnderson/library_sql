-- ADVANCED / JOIN QUERIES
-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause

-- Find all fields (book and author related) for all books written by George R.R. Martin.
SELECT * FROM authors JOIN books ON (authors.id = books.author_id) WHERE name = 'George R.R. Martin';
-- Find all fields (book and author related) for all books written by Milan Kundera.
SELECT * FROM books JOIN authors  ON (books.author_id = authors.id) WHERE name = 'Milan Kundera';
-- Find all books written by an author from China or the UK.
SELECT title FROM books JOIN authors ON (books.author_id = authors.id) WHERE nationality LIKE 'China' OR nationality LIKE 'United Kingdom';
-- Find out how many books Albert Camus wrote.
SELECT Count(books) FROM books JOIN authors ON (books.author_id = authors.id) WHERE name = 'Albert Camus';
-- Find out how many books written before 1980 were by authors not from the US.
SELECT Count(books) FROM books JOIN authors ON (books.author_id = authors.id) WHERE nationality != 'United States of America';
-- For these last two, you should not need a JOIN.

-- Find all authors whose names start with 'J'.
SELECT * FROM authors WHERE name LIKE 'J%';
-- Find all books whose titles contain 'the'.
SELECT * FROM books WHERE title LIKE '%the%';