DROP TABLE IF EXISTS person;

CREATE TABLE person (
  id INTIGER PRIMARY KEY
  ,first_name TEXT
  ,last_name TEXT
  ,age INTEGER
);

ALTER TABLE person RENAME TO peoples;

ALTER TABLE peoples ADD COLUMN hatred INTEGER;

ALTER TABLE peoples RENAME TO person;

.schema person

ALTER TABLE person ADD COLUMN weight INTEGER;
ALTER TABLE person ADD COLUMN height INTEGER;
.schema

DROP TABLE person;

/*
  Drills:
  -------
    1.) Add height and weight to person.
*/
