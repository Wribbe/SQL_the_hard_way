CREATE TABLE person (
  id INTEGER PRIMARY KEY,
  first_name TEXT,
  second_name TEXT,
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

/*
  Study drills:
  -------------

    1.) Adding a pet_id to person implicates that it's only possible to have
        one pet.

    2.) Cat lady with 50 cats -> Create 50 pet rows + 50 corresponding
        person_pet rows. person_pet rows have same lady id, but different
        pet_id.

    3.) Cars and relations: see above.

    4.) Datatypes in SQLite Version 3:

      NOTES:
        * Dynamic typing (only one that has that.)

        * Storage Classes and Datatypes:
          * NULL
          * INTEGER (1,2,3,4,6 or 8 bytes)
          * REAL (8-byte IEEE floating point)
          * TEXT (String UTF-8/-16BE/-16LE)
          * BLOB (exactly as input)

          * All columns need INTEGER PRIMARY KEY column.
          * No booleans, use 0/1.
          * No date-time types.

        * Type Affinity: (~)

        * Comparison expressions:
          * "=","==","<","<=",">",">=","!=","","IN","NOT IN", "BETWEEN", "IS",
            "IS NOT".
        [...]
        * Operators: (+,-,*,/,%,<<,>>,&,|) (casts to NUMERIC on both sides.)

        Sort and order: GROUP BY, UNION, INTERSECT, EXCEPT.
*/
