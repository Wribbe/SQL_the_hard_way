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

INSERT INTO person (id, first_name, last_name, age)
  VALUES (2, 'Ari', 'Mari', 15);
DELETE FROM pet WHERE dead = 1 AND name = 'Gigantor';
INSERT INTO pet VALUES (1, 'Gigantor', 'Robot', 1, 0);

-- Fails on unique id.
INSERT OR IGNORE INTO person (id, first_name, last_name, age)
  VALUES (0, 'Frank', 'Smith', 100);

SELECT * FROM person;

-- Replace Zed with Frank.
INSERT OR REPLACE INTO person (id, first_name, last_name, age)
  VALUES (0, 'Frank', 'Smith', 100);

SELECT * FROM person;

-- Use shorthand to get Zed back.
REPLACE INTO person (id, first_name, last_name, age)
  VALUES (0, 'Zed', 'Shaw', 37);

SELECT * FROM person;

-- Replace unicorn with pet Parrot.
SELECT * FROM pet;
REPLACE INTO pet (id, name, breed, age, dead)
  VALUES (0, 'Kraa', 'Party Parrot', '18', 0);
SELECT * FROM pet;

/*
  Drills:
  -------
  1.) Different INSERT OR:
    - REPLACE
    - ROLLBACK
    - ABORT
    - FAIL
    - IGNORE
  2.) Replace unicorn with pet Parrot.
*/
