CREATE TABLE Customer (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    phone_number VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS  Ticket (
    ticket_id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES Customer(customer_id),
    movie_id INTEGER REFERENCES Movie(movie_id),
    date TIMESTAMP WITH TIME ZONE
);

CREATE TABLE Movie (
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    genre VARCHAR(100),
    duration INTEGER
);
