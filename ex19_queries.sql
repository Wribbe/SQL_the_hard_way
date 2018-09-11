/** Logic and Math Expressions. **/

/* Get a simple average for pet ages. */
SELECT SUM(age) / COUNT(*) AS average FROM pet;
SELECT 1.0*SUM(age) / COUNT(*) AS average FROM pet;
SELECT AVG(age) FROM pet;

/* Get the average name lengths for pets. */
SELECT 1.0*SUM(LENGTH(name)) / COUNT(*) AS anl FROM pet;
SELECT AVG(LENGTH(name)) FROM pet;

/* Get the AVG() age rounded. */
SELECT ROUND(AVG(age)) AS average FROM pet;

/* Get a random number. */
SELECT RANDOM();
SELECT ABS(RANDOM() % 20);

/* Update all pet ages to a random number between 0-20. */
UPDATE pet SET age = ABS(RANDOM() % 20) WHERE dead = 0;

/* Check that it changed (maybe). */
SELECT ROUND(AVG(age)) AS average FROM pet;

/* Update with pet ranges 0-50. */
UPDATE pet SET age = ABS(RANDOM() % 50) WHERE dead = 0;

/* Check that it changed (maybe). */
SELECT ROUND(AVG(age)) AS average FROM pet;

/* Add 5 years to all pets. */
UPDATE pet SET age = age+5 WHERE dead = 0;

/* Check that it changed (maybe). */
SELECT ROUND(AVG(age)) AS average FROM pet;
