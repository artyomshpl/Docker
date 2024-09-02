CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS books (
    id SERIAL PRIMARY KEY,
    isbn VARCHAR(20) UNIQUE NOT NULL,
    title VARCHAR(255) NOT NULL,
    genre VARCHAR(50),
    description TEXT,
    author VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS free_books (
    id SERIAL PRIMARY KEY,
    book_id BIGINT NOT NULL,
    borrowed_time TIMESTAMP,
    return_time TIMESTAMP,
    FOREIGN KEY (book_id) REFERENCES books(id)
);

