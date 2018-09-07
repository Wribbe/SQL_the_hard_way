/* Get related table. */
SELECT * FROM person, person_pet, pet
  WHERE person.id = person_pet.person_id AND
  pet.id = person_pet.pet_id;

/* Add basic count column and append GROUPED BY. */
SELECT person.first_name, pet.breed, pet.dead, COUNT(dead)
  FROM person, person_pet, pet
  WHERE person.id = person_pet.person_id AND
  pet.id = person_pet.pet_id
  GROUP BY pet.breed, pet.dead
;

/* Drop first name, not summarized. */
SELECT pet.breed, pet.dead, COUNT(dead)
  FROM person, person_pet, pet
  WHERE person.id = person_pet.person_id AND
  pet.id = person_pet.pet_id
  GROUP BY pet.breed, pet.dead
;

/* Compare the counts to without the person_pet relation. */
SELECT breed, dead, COUNT(dead)
  FROM pet
  GROUP BY breed, dead
;

/* Drills */

/* Try a GROUP BY that is only between two tables in every combination you can
 * imagine. */

/* How many animals were bought at each year. */
SELECT STRFTIME("%Y", purchased_on) AS year, COUNT(*)
  FROM person_pet
  GROUP BY year
;

/* How many pets does each owner have? */
SELECT person.first_name, COUNT(first_name) AS num_pets
  FROM person, person_pet, pet
  WHERE person.id = person_pet.person_id AND
    pet.id = person_pet.pet_id
  GROUP BY first_name
  ORDER BY num_pets DESC
;
