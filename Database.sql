DROP TABLE IF EXISTS bilmerker;
CREATE TABLE bilmerker (
    id SERIAL PRIMARY KEY,
    merke VARCHAR(100)
);

INSERT INTO bilmerker (merke) VALUES 
    ('Toyota'),
    ('Ford'),
    ('Tesla'),
    ('Skoda'),
    ('Toyota');

DROP TABLE IF EXISTS users;
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

INSERT INTO users (name) VALUES
    ('Sleepy Joe'),
    ('Donald Trump'),
    ('Jill Stein'),
    ('Chase Oliver'),
    ('Cornel West'),
    ('Claudia De la Cruz'),
    ('Kamala Harris');

