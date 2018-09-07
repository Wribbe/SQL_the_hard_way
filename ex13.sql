DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS pet;
DROP TABLE IF EXISTS people_pet;

CREATE TABLE person (
  id INTEGER PRIMARY KEY
  ,first_name TEXT
  ,last_name TEXT
  ,age INTEGER
);

CREATE TABLE pet (
  id INTEGER PRIMARY KEY
  ,name TEXT
  ,breed TEXT
  ,age INTEGER
  ,dead INTEGER
);

CREATE TABLE person_pet (
  id_person INTEGER
  ,id_pet INTEGER
);

-- People.
INSERT INTO person (id, first_name, last_name, age)
  VALUES (0, "Zed", "Shaw", 37);

INSERT INTO person (id, first_name, last_name, age)
  VALUES (1, "Stefan", "Eng", 31);

-- Pets.
INSERT INTO pet (id, name, breed, age, dead)
  VALUES (0, "Fluffy", "Unicorn", 1000, 0);

INSERT INTO pet (id, name, breed, age, dead)
  VALUES (1, "Giganator", "Robot", 1, 1);

INSERT INTO pet (id, name, breed, age, dead)
  VALUES (2, "Billy", "Cat", 19, 1);

-- Ownership.
INSERT INTO person_pet (id_person, id_pet) VALUES (0,0);
INSERT INTO person_pet (id_person, id_pet) VALUES (0,1);
INSERT INTO person_pet (id_person, id_pet) VALUES (1,2);
INSERT INTO person_pet (id_person, id_pet) VALUES (1,1);

-- Alter the existing tables.
ALTER TABLE person ADD COLUMN dead INTEGER;
ALTER TABLE person ADD COLUMN phone_number TEXT;
ALTER TABLE person ADD COLUMN salary REAL;
ALTER TABLE person ADD COLUMN dob DATETIME;

ALTER TABLE pet ADD COLUMN dob DATETIME;
ALTER TABLE pet ADD COLUMN parent ITEGER;

ALTER TABLE person_pet ADD COLUMN purchased_on DATETIME;

-- Alter the existing data to fit new tables.
UPDATE person SET dead = 0;

UPDATE person SET phone_number = "0709441127" WHERE person.id = 0;
UPDATE person SET phone_number = "0709441128" WHERE person.id = 1;

UPDATE person SET salary = 279000.3;
UPDATE person SET dob = "1976-01-10" WHERE person.first_name = "Zed";
UPDATE person SET dob = "1986-04-14" WHERE person.first_name = "Stefan";

UPDATE pet SET dob = "1002-01-19", parent = NULL WHERE pet.id = 0;
UPDATE pet SET dob = "2017-11-03", parent = 0 WHERE pet.id = 1;
UPDATE pet SET dob = "2001-05-17", parent = 0 WHERE pet.id = 2;

UPDATE person_pet SET purchased_on = "2017-09-02" WHERE id_pet = 0;
UPDATE person_pet SET purchased_on = "2017-12-22" WHERE id_pet = 1;
UPDATE person_pet SET purchased_on = "2008-03-12" WHERE id_pet = 2;

SELECT * FROM person;
SELECT * FROM pet;
SELECT * FROM person_pet;

-- 3 more people.
INSERT INTO person (id, first_name, last_name, age, phone_number, salary, dob)
  VALUES (2, "Ari", "Mari", 15, "0702984738", 419.0, "2012-01-03");

INSERT INTO person (id, first_name, last_name, age, phone_number, salary, dob)
  VALUES (3, "Amanda", "H", 27, "0702447382", 1238.7, "1990-04-03");

INSERT INTO person (id, first_name, last_name, age, phone_number, salary, dob)
  VALUES (4, "Kalle", "H-Anka", 99, "029384729", 2.9384729, "2011-12-31");

SELECT * FROM person;

-- Add 4 more pets.
INSERT INTO pet (id, name, breed, age, dead, dob, parent)
  VALUES (3, "Roland", "Horse", 22, 0, "2019-01-03", 0);

INSERT INTO pet (id, name, breed, age, dead, dob, parent)
  VALUES (4, "ANNA", "Anka", 7, 0, "2000-01-13", 3);

INSERT INTO pet (id, name, breed, age, dead, dob, parent)
  VALUES (5, "Karl", "Björn", 100, 0, "2009-03-23", 2);

INSERT INTO pet (id, name, breed, age, dead, dob, parent)
  VALUES (6, "Zanna", "Zebra", 10, 0, "2019-11-21", 1);

SELECT * FROM pet;

-- Assign owners to pets.
INSERT INTO person_pet (id_person, id_pet, purchased_on)
  VALUES (
    (SELECT id FROM person WHERE first_name = "Zed"),
    (SELECT id FROM pet WHERE breed = "Horse"),
    "2019-01-03"
  );

INSERT INTO person_pet (id_person, id_pet, purchased_on)
  VALUES (
    (SELECT id FROM person WHERE first_name = "Stefan"),
    (SELECT id FROM pet WHERE breed = "Anka"),
    "2003-01-13"
  );

INSERT INTO person_pet (id_person, id_pet, purchased_on)
  VALUES (
    (SELECT id FROM person WHERE first_name = "Stefan"),
    (SELECT id FROM pet WHERE breed = "Björn"),
    "2009-11-23"
  );

INSERT INTO person_pet (id_person, id_pet, purchased_on)
  VALUES (
    (SELECT id FROM person WHERE first_name = "Zed"),
    (SELECT id FROM pet WHERE breed = "Zebra"),
    "2019-12-03"
  );

-- Find the name and owner of pets bought after 2004.
SELECT pet.name, person.first_name FROM pet, person, person_pet
  WHERE
    STRFTIME("%Y", person_pet.purchased_on) > "2004" AND
    pet.id = person_pet.id_pet AND
    person.id = person_pet.id_person
;

-- Find all children to the Unicorn.
SELECT pet.name FROM pet WHERE pet.parent = ( SELECT id FROM pet WHERE breed =
  "Unicorn");
