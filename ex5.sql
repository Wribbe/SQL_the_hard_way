CREATE TABLE person (
  id INTEGER PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  age INTEGER
);

CREATE TABLE pet (
  id INTEGER PRIMARY KEY,
  name TEXT,
  breed TEXT,
  age INTEGER,
  dead INTEGER
);

CREATE TABLE person_pet (
  person_id INTEGER,
  pet_id INTEGER
);

CREATE TABLE car (
  id INTIGER PRIMARY KEY,
  year INTEGER,
  model TEXT,
  manifacturer TEXT,
  color TEXT
);

CREATE TABLE person_car (
  person_id INTEGER,
  car_id INTEGER
);

INSERT INTO person (id, first_name, last_name, age)
  VALUES (0, 'Zed', 'Shaw', 37);

INSERT INTO pet (id, name, breed, age, dead)
  VALUES (0, 'Fluffy', 'Unicorn', 1000, 0);

INSERT INTO pet VALUES(1, 'Gigantor', 'Robot', 1, 1);

INSERT INTO person (id, first_name, last_name, age)
  VALUES (1, 'Stefan', 'Eng', 31);

INSERT INTO pet (id, name, breed, age, dead)
  VALUES (2, 'Billy', 'Cat', 13, 1);

INSERT INTO person_pet (person_id, pet_id) VALUES (0, 0);
INSERT INTO person_pet VALUES (0, 1);

INSERT INTO person_pet (person_id, pet_id) VALUES (1,2);

INSERT INTO person_pet (person_id, pet_id) VALUES (1,1);

SELECT * FROM person;
SELECT name, age FROM pet;
SELECT name, age FROM pet WHERE dead = 0;
SELECT * FROM person WHERE first_name != 'Zed';

-- Find pets age > 10.
SELECT * FROM pet WHERE age > 10;

-- Find younger people.
INSERT INTO person (id, first_name, last_name, age)
  VALUES (2, 'Ari', 'Mari', 15);
SELECT * from person WHERE age < 31;

-- Find older people.
SELECT * from person WHERE age > 31;

-- More then one test.
SELECT * from person WHERE age > 15 AND first_name = 'Stefan';

-- Test with 3 columns.
SELECT * from person WHERE id > 0 AND (age > 30 OR age < 37);

/*
  Drills:
  -------

  1.) Write query that find all pets older than 10 years.
  2.) All people younger than me.
  3.) All people older than me.
  4.) More than one test.
  5.) Test 3 columns.

*/
