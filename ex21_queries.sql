/** Using views. **/

/* Example from ex16. */
SELECT pet.breed, pet.dead, COUNT(dead)
  FROM person JOIN pet, person_pet
  ON person.id = person_pet.person_id
  AND pet.id = person_pet.pet_id
  GROUP BY pet.breed, pet.dead
;

/* Drop view of dead pets if it already exists. */
DROP VIEW IF EXISTS dead_pets;
/* Create view of dead pets. */
CREATE VIEW dead_pets AS
SELECT pet.breed, pet.dead, COUNT(dead) AS total
  FROM person JOIN person_pet, pet
  ON person.id = person_pet.person_id
  AND pet.id = person_pet.pet_id
  GROUP BY pet.breed, pet.dead
;

/* Try to use the view. */
SELECT * FROM dead_pets;

/* Get rid of cats in the database. */
DELETE FROM pet WHERE breed = "Cat";

/* Did it work? */
SELECT * FROM dead_pets;

/* Drop the table. */
DROP VIEW dead_pets;
