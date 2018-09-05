INSERT INTO person (id, first_name, last_name, age)
  VALUES (0, 'Zed', 'Shaw', 37);

INSERT INTO pet (id, name, breed, age, dead)
  VALUES (0, 'Fluffy', 'Unicorn', 1000, 0);

INSERT INTO pet VALUES(1, 'Gigantor', 'Robot', 1, 1);

INSERT INTO person (id, first_name, last_name, age)
  VALUES (1, 'Stefan', 'Eng', 31);

INSERT INTO pet (id, name, breed, age, dead)
  VALUES (2, 'Billy', 'Cat', 13, 1);

/*
  Drills:
  -------

  1.) Insert self+pet: See above.

  2.) Didn't change the schema in prev.

  3.) Different types that result in TEXT affinity:

      CHARACTER(20)
      VARCHAR(255)
      VARYING CHARACTER(255)
      NCHAR(55)
      NATIVE CHARACTER(70)
      NVARCHAR(100)
      TEXT
      CLOB

    Sqlite ignores (.*), no character restrictions except SQLITE_MAX_LENGTH.

*/
