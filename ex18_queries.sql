/* Select the average age of every person. */
SELECT AVG(age) FROM person;

/* Select the average age of every pet. */
SELECT AVG(age) FROM pet;

/* Select the average age of every breed by dead or alive. */
SELECT breed, dead, AVG(age) FROM pet
  GROUP BY breed, dead
;

/* Sum and total. */
SELECT SUM(age) FROM person;
SELECT SUM(age) FROM pet;

SELECT breed, SUM(dead), SUM(age) FROM pet
  WHERE dead = 1
  GROUP BY breed, dead
;

/* Min and max. */
SELECT MIN(age), MAX(age) FROM person;
SELECT MIN(age), MAX(age) FROM pet;

SELECT breed, dead, MIN(age), MAX(age) FROM pet
  WHERE age > 0
  GROUP BY breed, dead
;

/* Drills. */

/* Aggregate and sort who has the most owned pet-years. */
SELECT person.first_name, SUM(pet.age) AS years
  FROM person, person_pet, pet
  WHERE person.id = person_pet.person_id AND pet.id = person_pet.pet_id
  GROUP BY first_name
  ORDER BY years DESC
;

/* Check that the result above makes sense. */
SELECT pet.name, pet.age, STRFTIME("%Y", purchased_on) FROM pet, person, person_pet
  WHERE pet.id = person_pet.pet_id AND
        person.id = person_pet.person_id AND
        person.first_name = "Linn"
;
