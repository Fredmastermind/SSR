DROP table IF EXISTS skuespillere_i_film;
DROP TABLE IF EXISTS filmer;
DROP TABLE IF EXISTS skuespillere;

CREATE TABLE filmer (
    id SERIAL PRIMARY KEY,
    tittel VARCHAR(100) NOT NULL
);

CREATE TABLE skuespillere (
    id SERIAL PRIMARY KEY,
    navn VARCHAR(100) NOT NULL 
);

INSERT INTO filmer (tittel) VALUES
    ('The Matrix'),
    ('The Matrix Reloaded'),
    ('The Matrix Revolutions');

INSERT INTO skuespillere (navn) VALUES
    ('Keanu Reeves'),
    ('Laurence Fishburne'),
    ('Carrie-Anne Moss');

CREATE TABLE skuespillere_i_film (
    id SERIAL PRIMARY KEY,
    filmer_id INT NOT NULL,
    skuespillere_id INT NOT NULL,
    FOREIGN KEY (filmer_id) REFERENCES filmer(id),
    FOREIGN KEY (skuespillere_id) REFERENCES skuespillere(id)
);

INSERT INTO skuespillere_i_film (filmer_id, skuespillere_id) VALUES 
    (1, 1), 
    (2, 2);

--SELECT * FROM filmer;
--SELECT * FROM skuespillere;

SELECT DISTINCT tittel, navn from filmer, skuespillere;
