/* Select everyone who is older than 10. */
SELECT * FROM person WHERE dob < DATE('now', '-10 years') ORDER BY dob;

/* Select everyone born before 1970. */
SELECT * FROM person WHERE dob < DATE('1970-01-01') ORDER BY dob;

/* Select all pets purchased between 1990 and 2000. */
SELECT *, STRFTIME("%Y", purchased_on) AS year FROM person_pet
  WHERE year > "1990" AND year < "2000" ORDER BY year
;

/* Link the pets from previous query. */
SELECT pet.age, pet.name, STRFTIME("%Y", purchased_on) AS year
  FROM pet, person_pet
  WHERE year > "1990" AND year < "2000" AND person_pet.pet_id = pet.id
  ORDER BY year DESC, pet.age DESC
;

/* Drills */

/* Combine with GROUP BY with the queries to produce counts over various time
 * periods. */

SELECT STRFTIME("%Y", purchased_on) AS year, COUNT(*) AS num
  FROM person_pet
  WHERE year > "2000" AND year < "2018"
  GROUP BY year
;

SELECT SUM(num) FROM (
  SELECT STRFTIME("%Y", purchased_on) AS year, COUNT(*) AS num
    FROM person_pet
    WHERE year > "2000" AND year < "2018"
    GROUP BY year
  )
;
