CREATE DATABASE number_guess_db;
\c number_guess_db

CREATE TABLE user_scores (
  id SERIAL PRIMARY KEY,
  username VARCHAR(255),
  attempts INT
);

INSERT INTO user_scores (username, attempts) VALUES ('Jikan', 7);
