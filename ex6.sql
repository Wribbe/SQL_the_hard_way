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

SELECT * FROM pet WHERE age > 10;

INSERT INTO person (id, first_name, last_name, age)
  VALUES (2, 'Ari', 'Mari', 15);
SELECT * from person WHERE age < 31;

SELECT * from person WHERE age > 31;

SELECT * from person WHERE age > 15 AND first_name = 'Stefan';

SELECT * from person WHERE id > 0 AND (age > 30 OR age < 37);

SELECT pet.id, pet.name, pet.age, pet.dead
  FROM pet, person_pet, person
  WHERE
  pet.id = person_pet.pet_id AND
  person_pet.person_id = person.id AND
  person.first_name = 'Zed';

SELECT pet.id, pet.name, pet.age, pet.dead
  FROM pet
  WHERE pet.id IN
  (
    SELECT pet_id FROM person_pet, person
    WHERE person_pet.person_id = person.id
    AND person.first_name = 'Zed'
  );

-- Find my pets added so far using name.
SELECT pet.id, pet.name, pet.age, pet.dead
  FROM pet
  WHERE pet.id IN
  (
    SELECT pet_id from person_pet, person
    WHERE person_pet.person_id = person.id
    AND person.first_name = 'Stefan'
  );

-- Find my pets using my ID instead of name.
SELECT pet.id, pet.name, pet.age, pet.dead
  FROM pet
  WHERE pet.id IN
  (
    SELECT pet_id from person_pet, person
    WHERE person_pet.person_id = person.id
    AND person.id = 1
  );

/*
  Drills:
  -------
    1.) Find the pets you added this far.
    2.) Find the pets you added this far by using id instead of name.
*/
