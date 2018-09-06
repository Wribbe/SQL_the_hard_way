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

INSERT INTO person (id, first_name, last_name, age)
  VALUES (2, 'Ari', 'Mari', 15);
DELETE FROM pet WHERE dead = 1 AND name = 'Gigantor';
INSERT INTO pet VALUES (1, 'Gigantor', 'Robot', 1, 0);

--SELECT * FROM pet;
--
--UPDATE pet SET name = "Zed's Pet" WHERE id IN (
--  SELECT pet.id
--  FROM pet, person_pet, person
--  WHERE
--    person.id = person_pet.person_id AND
--    pet.id = person_pet.pet_id AND
--    person.first_name = "Zed"
--);
--
--SELECT * FROM pet;

SELECT * from pet;

-- Kill robot.
UPDATE pet SET dead = 1 WHERE id IN (
  SELECT pet.id FROM pet WHERE pet.breed = "Robot"
);
-- Rename Zed's dead pets.
UPDATE pet SET name = "Zed's Dead Pet" WHERE id IN (
  SELECT pet.id FROM pet, person, person_pet
  WHERE
    person.id = person_pet.person_id AND
    pet.id = person_pet.pet_id AND
    person.first_name = "Zed" AND
    pet.dead = 1
);

SELECT * from pet;


/*
  Drills:
  -------
    1.) Rename dead pets to Zed's Dead Pet.
    2.) SQL as Understood By SQLite:
      - CREATE TABLE
          Create a new table.
      - DROP TABLE
          Removes table from database and disk (not recoverable).
      - INSERT
          INSERT INTO table VALUES(...);
          INSERT INTO table SELECT ...;
          INSERT INTO table DEFAULT VALUES;
      - DELETE
          Removes records from the table indentified by the
          qualified-table-name. If no WHERE clause -> All records in the table
          are deleted.
      - SELECT
          Used to query the database.
      - UPDATE
          Modify subset of the values stored in zero or more rows in the database.
*/
