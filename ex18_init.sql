CREATE TABLE person (
    id INTEGER PRIMARY KEY
    ,first_name TEXT
    ,last_name TEXT
    ,age INTEGER
    ,dob DATETIME
);
CREATE TABLE pet (
    id INTEGER PRIMARY KEY
    ,name TEXT
    ,breed TEXT
    ,age INTEGER
    ,dead INTEGER
);

CREATE TABLE person_pet (
    person_id INTEGER
    ,pet_id INTEGER
    ,purchased_on DATETIME
);

INSERT INTO pet
    VALUES (NULL, "Astrid", "Cat", 18, "1");
INSERT INTO pet
    VALUES (NULL, "Chloette", "Unicorn", 15, "1");
INSERT INTO pet
    VALUES (NULL, "Isabella", "Cat", 17, "0");
INSERT INTO pet
    VALUES (NULL, "Allsun", "Fish", 18, "0");
INSERT INTO pet
    VALUES (NULL, "Edi", "Cat", 6, "0");
INSERT INTO pet
    VALUES (NULL, "Elfrieda", "Fish", 15, "0");
INSERT INTO pet
    VALUES (NULL, "Adriane", "Fish", 19, "1");
INSERT INTO pet
    VALUES (NULL, "Chandal", "Fish", 11, "1");
INSERT INTO pet
    VALUES (NULL, "Dorena", "Unicorn", 19, "0");
INSERT INTO pet
    VALUES (NULL, "Janette", "Dog", 5, "0");
INSERT INTO pet
    VALUES (NULL, "Ali", "Unicorn", 11, "1");
INSERT INTO pet
    VALUES (NULL, "Harrietta", "Dog", 19, "0");
INSERT INTO pet
    VALUES (NULL, "Deina", "Cat", 5, "1");
INSERT INTO pet
    VALUES (NULL, "Annaliese", "Cat", 0, "0");
INSERT INTO pet
    VALUES (NULL, "Arlen", "Cat", 13, "0");
INSERT INTO pet
    VALUES (NULL, "Arlina", "Unicorn", 9, "0");
INSERT INTO pet
    VALUES (NULL, "Courtnay", "Fish", 14, "0");
INSERT INTO pet
    VALUES (NULL, "Crysta", "Fish", 7, "0");
INSERT INTO pet
    VALUES (NULL, "Beckie", "Unicorn", 14, "1");
INSERT INTO pet
    VALUES (NULL, "Arlinda", "Fish", 1, "0");
INSERT INTO pet
    VALUES (NULL, "Druci", "Fish", 15, "0");
INSERT INTO pet
    VALUES (NULL, "Faustine", "Unicorn", 20, "0");
INSERT INTO pet
    VALUES (NULL, "Janina", "Cat", 9, "0");
INSERT INTO pet
    VALUES (NULL, "Dorella", "Cat", 13, "1");
INSERT INTO pet
    VALUES (NULL, "Demetris", "Dog", 20, "1");
INSERT INTO pet
    VALUES (NULL, "Coraline", "Unicorn", 20, "1");
INSERT INTO pet
    VALUES (NULL, "Gwenny", "Cat", 6, "1");
INSERT INTO pet
    VALUES (NULL, "Elli", "Fish", 20, "1");
INSERT INTO pet
    VALUES (NULL, "Carlina", "Cat", 17, "0");
INSERT INTO pet
    VALUES (NULL, "Brandy", "Fish", 3, "0");
INSERT INTO pet
    VALUES (NULL, "Daniela", "Dog", 8, "0");
INSERT INTO pet
    VALUES (NULL, "Ashlen", "Unicorn", 7, "0");
INSERT INTO pet
    VALUES (NULL, "Becky", "Unicorn", 16, "0");
INSERT INTO pet
    VALUES (NULL, "Gerianne", "Unicorn", 2, "1");
INSERT INTO pet
    VALUES (NULL, "Aarika", "Dog", 7, "1");
INSERT INTO pet
    VALUES (NULL, "Ericha", "Dog", 8, "0");
INSERT INTO pet
    VALUES (NULL, "Fionna", "Unicorn", 0, "0");
INSERT INTO pet
    VALUES (NULL, "Darlleen", "Fish", 8, "0");
INSERT INTO pet
    VALUES (NULL, "Frederique", "Dog", 5, "1");
INSERT INTO pet
    VALUES (NULL, "Gabriel", "Fish", 2, "0");
INSERT INTO pet
    VALUES (NULL, "Jillana", "Cat", 14, "1");
INSERT INTO pet
    VALUES (NULL, "Gwendolyn", "Fish", 7, "1");
INSERT INTO pet
    VALUES (NULL, "Annadiane", "Unicorn", 17, "1");
INSERT INTO pet
    VALUES (NULL, "Delilah", "Unicorn", 9, "1");
INSERT INTO pet
    VALUES (NULL, "Gerti", "Unicorn", 14, "1");
INSERT INTO pet
    VALUES (NULL, "Gretchen", "Fish", 4, "1");
INSERT INTO pet
    VALUES (NULL, "Janie", "Dog", 18, "0");
INSERT INTO pet
    VALUES (NULL, "Hanny", "Cat", 7, "1");
INSERT INTO pet
    VALUES (NULL, "Berta", "Fish", 3, "1");
INSERT INTO pet
    VALUES (NULL, "Em", "Cat", 18, "0");
INSERT INTO pet
    VALUES (NULL, "Christina", "Fish", 9, "0");
INSERT INTO pet
    VALUES (NULL, "Gretna", "Fish", 11, "0");
INSERT INTO pet
    VALUES (NULL, "Delly", "Dog", 2, "1");
INSERT INTO pet
    VALUES (NULL, "Brinna", "Fish", 11, "1");
INSERT INTO pet
    VALUES (NULL, "Audie", "Cat", 13, "0");
INSERT INTO pet
    VALUES (NULL, "Ibby", "Unicorn", 10, "1");
INSERT INTO pet
    VALUES (NULL, "Corry", "Fish", 12, "0");
INSERT INTO pet
    VALUES (NULL, "Jacquelyn", "Dog", 1, "0");
INSERT INTO pet
    VALUES (NULL, "Catina", "Cat", 15, "0");
INSERT INTO pet
    VALUES (NULL, "Coral", "Dog", 8, "0");
INSERT INTO pet
    VALUES (NULL, "Abbye", "Unicorn", 2, "1");
INSERT INTO pet
    VALUES (NULL, "Elianore", "Unicorn", 6, "0");
INSERT INTO pet
    VALUES (NULL, "Celestine", "Cat", 3, "1");
INSERT INTO pet
    VALUES (NULL, "Christen", "Dog", 1, "1");
INSERT INTO pet
    VALUES (NULL, "Delia", "Unicorn", 6, "1");
INSERT INTO pet
    VALUES (NULL, "Jessica", "Cat", 10, "1");
INSERT INTO pet
    VALUES (NULL, "Carree", "Cat", 11, "0");
INSERT INTO pet
    VALUES (NULL, "Janine", "Unicorn", 18, "1");
INSERT INTO pet
    VALUES (NULL, "Gray", "Cat", 16, "1");
INSERT INTO pet
    VALUES (NULL, "Cindee", "Unicorn", 12, "1");
INSERT INTO pet
    VALUES (NULL, "Cher", "Unicorn", 19, "0");
INSERT INTO pet
    VALUES (NULL, "Alisun", "Dog", 12, "1");
INSERT INTO pet
    VALUES (NULL, "Benni", "Dog", 12, "1");
INSERT INTO pet
    VALUES (NULL, "Gratiana", "Fish", 13, "0");
INSERT INTO pet
    VALUES (NULL, "Hattie", "Dog", 12, "1");
INSERT INTO pet
    VALUES (NULL, "Colette", "Unicorn", 20, "0");
INSERT INTO pet
    VALUES (NULL, "Catlaina", "Fish", 9, "1");
INSERT INTO pet
    VALUES (NULL, "Charo", "Dog", 2, "0");
INSERT INTO pet
    VALUES (NULL, "Biddie", "Dog", 16, "0");
INSERT INTO pet
    VALUES (NULL, "Drucie", "Fish", 16, "1");
INSERT INTO pet
    VALUES (NULL, "Collette", "Cat", 14, "1");
INSERT INTO pet
    VALUES (NULL, "Ally", "Cat", 11, "0");
INSERT INTO pet
    VALUES (NULL, "Anderea", "Unicorn", 5, "0");
INSERT INTO pet
    VALUES (NULL, "Alana", "Dog", 8, "1");
INSERT INTO pet
    VALUES (NULL, "Janith", "Cat", 4, "0");
INSERT INTO pet
    VALUES (NULL, "Desiree", "Unicorn", 7, "0");
INSERT INTO pet
    VALUES (NULL, "Althea", "Unicorn", 15, "0");
INSERT INTO pet
    VALUES (NULL, "Hetti", "Fish", 5, "1");
INSERT INTO pet
    VALUES (NULL, "April", "Fish", 16, "1");
INSERT INTO pet
    VALUES (NULL, "Jenifer", "Dog", 13, "0");
INSERT INTO pet
    VALUES (NULL, "Barbabra", "Unicorn", 4, "0");
INSERT INTO pet
    VALUES (NULL, "Antoinette", "Unicorn", 14, "0");
INSERT INTO pet
    VALUES (NULL, "Helena", "Fish", 10, "0");
INSERT INTO pet
    VALUES (NULL, "Antonetta", "Fish", 13, "0");
INSERT INTO pet
    VALUES (NULL, "Constantia", "Cat", 0, "1");
INSERT INTO pet
    VALUES (NULL, "Amargo", "Unicorn", 20, "1");
INSERT INTO pet
    VALUES (NULL, "Glen", "Dog", 19, "0");
INSERT INTO pet
    VALUES (NULL, "Antonina", "Dog", 4, "1");
INSERT INTO pet
    VALUES (NULL, "Chere", "Dog", 18, "0");
INSERT INTO pet
    VALUES (NULL, "Bobine", "Cat", 7, "1");
INSERT INTO person
    VALUES (NULL, "Ursula", "Leena", 66, "1980-08-19 02:19:31.683784");
INSERT INTO person
    VALUES (NULL, "Nikolia", "Mathilde", 9, "2009-01-10 21:19:31.683811");
INSERT INTO person
    VALUES (NULL, "Vitia", "Nyssa", 19, "2003-02-12 06:19:31.683826");
INSERT INTO person
    VALUES (NULL, "Valaria", "Tamma", 65, "2015-04-28 13:19:31.683838");
INSERT INTO person
    VALUES (NULL, "Pavia", "Roxane", 94, "2001-06-07 01:19:31.683850");
INSERT INTO person
    VALUES (NULL, "Merla", "Tiphanie", 40, "1997-08-02 05:19:31.683863");
INSERT INTO person
    VALUES (NULL, "Kelsey", "Seline", 15, "1992-03-25 07:19:31.683876");
INSERT INTO person
    VALUES (NULL, "Seana", "Ollie", 23, "1975-12-20 08:19:31.683888");
INSERT INTO person
    VALUES (NULL, "Roxie", "Kenna", 67, "1982-08-07 18:19:31.683900");
INSERT INTO person
    VALUES (NULL, "Valera", "Kimberley", 0, "2008-06-01 05:19:31.683912");
INSERT INTO person
    VALUES (NULL, "Siusan", "Susanne", 26, "1981-01-06 19:19:31.683925");
INSERT INTO person
    VALUES (NULL, "Paulie", "Kathi", 30, "2009-01-19 10:19:31.683937");
INSERT INTO person
    VALUES (NULL, "Larissa", "Joella", 15, "2006-07-25 02:19:31.683950");
INSERT INTO person
    VALUES (NULL, "Romonda", "Marcelline", 58, "2010-01-17 19:19:31.683962");
INSERT INTO person
    VALUES (NULL, "Lucie", "Sindee", 75, "1981-09-15 08:19:31.683975");
INSERT INTO person
    VALUES (NULL, "Shari", "Leanor", 62, "1978-09-14 01:19:31.683987");
INSERT INTO person
    VALUES (NULL, "Whitney", "Taffy", 60, "1997-11-25 11:19:31.683999");
INSERT INTO person
    VALUES (NULL, "Nananne", "Marigold", 62, "2016-08-24 18:19:31.684012");
INSERT INTO person
    VALUES (NULL, "Marcellina", "Melessa", 99, "2005-02-16 15:19:31.684025");
INSERT INTO person
    VALUES (NULL, "Trudy", "Shawna", 75, "2007-05-13 15:19:31.684037");
INSERT INTO person
    VALUES (NULL, "Ronnica", "Meghan", 78, "1968-09-05 20:19:31.684049");
INSERT INTO person
    VALUES (NULL, "Sharon", "Sharline", 83, "2009-07-11 17:19:31.684061");
INSERT INTO person
    VALUES (NULL, "Tani", "Mella", 73, "1976-08-23 18:19:31.684074");
INSERT INTO person
    VALUES (NULL, "Valerie", "Yolanthe", 99, "2018-01-17 06:19:31.684086");
INSERT INTO person
    VALUES (NULL, "Kylila", "Ofilia", 0, "1969-05-14 18:19:31.684099");
INSERT INTO person
    VALUES (NULL, "Sharline", "Renae", 1, "1979-02-28 10:19:31.684111");
INSERT INTO person
    VALUES (NULL, "Karolina", "Kassia", 85, "1977-12-12 16:19:31.684124");
INSERT INTO person
    VALUES (NULL, "Tomi", "Marcellina", 92, "2002-04-15 17:19:31.684136");
INSERT INTO person
    VALUES (NULL, "Perrine", "Tatiana", 2, "1991-04-12 06:19:31.684148");
INSERT INTO person
    VALUES (NULL, "Linnie", "Rhiamon", 16, "1981-07-05 21:19:31.684160");
INSERT INTO person
    VALUES (NULL, "Mela", "Vickie", 82, "1985-11-15 22:19:31.684172");
INSERT INTO person
    VALUES (NULL, "Mahala", "Silva", 53, "1996-05-13 19:19:31.684185");
INSERT INTO person
    VALUES (NULL, "Trudi", "Theresa", 18, "1997-06-13 03:19:31.684197");
INSERT INTO person
    VALUES (NULL, "Kristin", "Juana", 25, "1996-05-18 07:19:31.684209");
INSERT INTO person
    VALUES (NULL, "Rayna", "Mariann", 42, "1985-01-31 14:19:31.684221");
INSERT INTO person
    VALUES (NULL, "Rosanna", "Winonah", 66, "1979-01-06 02:19:31.684234");
INSERT INTO person
    VALUES (NULL, "Ray", "Leeann", 0, "2011-03-14 03:19:31.684246");
INSERT INTO person
    VALUES (NULL, "Nertie", "Wini", 26, "2017-08-12 22:19:31.684258");
INSERT INTO person
    VALUES (NULL, "Linn", "Pamela", 56, "1982-06-13 11:19:31.684270");
INSERT INTO person
    VALUES (NULL, "Ludovika", "Sib", 96, "2003-09-21 09:19:31.684283");
INSERT INTO person
    VALUES (NULL, "Suzann", "Olympia", 50, "1973-10-04 10:19:31.684296");
INSERT INTO person
    VALUES (NULL, "Lucy", "Madella", 30, "1998-08-27 16:19:31.684309");
INSERT INTO person
    VALUES (NULL, "Mable", "Rosabella", 8, "1971-01-03 12:19:31.684322");
INSERT INTO person
    VALUES (NULL, "Madge", "Phyllys", 71, "1986-04-01 22:19:31.684334");
INSERT INTO person
    VALUES (NULL, "Priscilla", "Trenna", 81, "2009-04-07 01:19:31.684347");
INSERT INTO person
    VALUES (NULL, "Rheta", "Millie", 47, "1976-06-26 21:19:31.684359");
INSERT INTO person
    VALUES (NULL, "Roanne", "Joellen", 78, "1989-03-07 12:19:31.684371");
INSERT INTO person
    VALUES (NULL, "Violet", "Rosemarie", 1, "1991-07-07 11:19:31.684384");
INSERT INTO person
    VALUES (NULL, "Kelly", "Tatum", 43, "1998-07-19 23:19:31.684396");
INSERT INTO person
    VALUES (NULL, "Leeanne", "Laural", 21, "2010-09-12 10:19:31.684408");
INSERT INTO person
    VALUES (NULL, "Shea", "Kaleena", 15, "1978-09-29 22:19:31.684421");
INSERT INTO person
    VALUES (NULL, "Libby", "Maddie", 77, "1996-04-14 08:19:31.684433");
INSERT INTO person
    VALUES (NULL, "Noelle", "Victoria", 32, "1991-06-24 03:19:31.684446");
INSERT INTO person
    VALUES (NULL, "Roxi", "Oralia", 35, "1998-02-18 02:19:31.684459");
INSERT INTO person
    VALUES (NULL, "Oralla", "Tandy", 91, "1967-10-09 09:19:31.684471");
INSERT INTO person
    VALUES (NULL, "Lindsey", "Salaidh", 15, "1986-05-21 21:19:31.684483");
INSERT INTO person
    VALUES (NULL, "Perle", "Rosalie", 59, "1973-02-16 09:19:31.684495");
INSERT INTO person
    VALUES (NULL, "Petunia", "Susie", 97, "2000-05-21 09:19:31.684509");
INSERT INTO person
    VALUES (NULL, "Rosalinda", "Marsiella", 96, "2002-12-19 09:19:31.684521");
INSERT INTO person
    VALUES (NULL, "Marlo", "Lorraine", 55, "1995-08-05 03:19:31.684534");
INSERT INTO person
    VALUES (NULL, "Nonnah", "Katlin", 69, "2000-07-05 06:19:31.684547");
INSERT INTO person
    VALUES (NULL, "Simonette", "Mag", 84, "1968-01-29 07:19:31.684559");
INSERT INTO person
    VALUES (NULL, "Malinde", "Madge", 85, "2011-02-18 13:19:31.684571");
INSERT INTO person
    VALUES (NULL, "Leda", "Laurianne", 27, "2016-03-03 11:19:31.684583");
INSERT INTO person
    VALUES (NULL, "Ulrica", "Orella", 69, "2015-02-25 02:19:31.684596");
INSERT INTO person
    VALUES (NULL, "Tierney", "Josephina", 74, "1992-02-09 08:19:31.684608");
INSERT INTO person
    VALUES (NULL, "Tommy", "Latisha", 40, "1989-08-16 00:19:31.684620");
INSERT INTO person
    VALUES (NULL, "Linet", "Myrilla", 64, "1987-12-20 23:19:31.684632");
INSERT INTO person
    VALUES (NULL, "Kamillah", "Phyllis", 8, "1979-03-11 01:19:31.684645");
INSERT INTO person
    VALUES (NULL, "Nora", "Mari", 2, "1994-10-08 13:19:31.684658");
INSERT INTO person
    VALUES (NULL, "Marley", "Lory", 24, "2005-02-26 09:19:31.684670");
INSERT INTO person
    VALUES (NULL, "Katerine", "Kristin", 96, "2007-06-19 13:19:31.684682");
INSERT INTO person
    VALUES (NULL, "Ricki", "Pooh", 68, "2010-11-26 13:19:31.684694");
INSERT INTO person
    VALUES (NULL, "Mimi", "Netta", 65, "1983-01-14 21:19:31.684706");
INSERT INTO person
    VALUES (NULL, "Odetta", "Marrissa", 38, "1998-04-20 08:19:31.684718");
INSERT INTO person
    VALUES (NULL, "Laurette", "Stace", 85, "2001-05-03 03:19:31.684731");
INSERT INTO person
    VALUES (NULL, "Tiena", "Noellyn", 62, "2017-04-14 19:19:31.684743");
INSERT INTO person
    VALUES (NULL, "Nadeen", "Siana", 72, "2016-06-09 17:19:31.684755");
INSERT INTO person
    VALUES (NULL, "Neile", "Moyra", 100, "2011-05-08 01:19:31.684767");
INSERT INTO person
    VALUES (NULL, "Sissie", "Madelina", 25, "1999-08-05 00:19:31.684779");
INSERT INTO person
    VALUES (NULL, "Petronella", "Meg", 21, "1982-11-26 22:19:31.684791");
INSERT INTO person
    VALUES (NULL, "Kora", "Savina", 76, "1968-09-19 00:19:31.684804");
INSERT INTO person
    VALUES (NULL, "Joli", "Quinn", 31, "1999-02-11 14:19:31.684816");
INSERT INTO person
    VALUES (NULL, "Loralee", "Sela", 84, "1994-09-22 11:19:31.684829");
INSERT INTO person
    VALUES (NULL, "Melita", "Rheba", 28, "1996-08-13 03:19:31.684841");
INSERT INTO person
    VALUES (NULL, "Korie", "Ofilia", 86, "1980-09-15 10:19:31.684853");
INSERT INTO person
    VALUES (NULL, "Tani", "Melesa", 99, "1979-03-07 15:19:31.684866");
INSERT INTO person
    VALUES (NULL, "Ruperta", "Tomasina", 45, "1990-11-12 15:19:31.684878");
INSERT INTO person
    VALUES (NULL, "Karie", "Randene", 76, "1996-08-17 09:19:31.684891");
INSERT INTO person
    VALUES (NULL, "Juditha", "Karissa", 33, "2009-10-05 22:19:31.684903");
INSERT INTO person
    VALUES (NULL, "Nadiya", "Lexy", 46, "1972-01-27 15:19:31.684915");
INSERT INTO person
    VALUES (NULL, "Lavina", "Oralle", 46, "2012-05-10 11:19:31.684927");
INSERT INTO person
    VALUES (NULL, "Pauletta", "Melina", 18, "1981-05-13 13:19:31.684939");
INSERT INTO person
    VALUES (NULL, "Sybilla", "Winnah", 25, "1973-12-03 11:19:31.684951");
INSERT INTO person
    VALUES (NULL, "Ulrike", "Maryanna", 62, "2018-05-06 20:19:31.684964");
INSERT INTO person
    VALUES (NULL, "Ketti", "Keslie", 22, "1968-07-12 01:19:31.684976");
INSERT INTO person
    VALUES (NULL, "Lizbeth", "Marjy", 45, "1977-03-31 20:19:31.684988");
INSERT INTO person
    VALUES (NULL, "Zaneta", "Shaylynn", 80, "1998-06-23 10:19:31.685000");
INSERT INTO person
    VALUES (NULL, "Rosalyn", "Kelsi", 97, "1994-05-13 10:19:31.685012");
INSERT INTO person
    VALUES (NULL, "Louisa", "Mufi", 8, "2014-09-26 01:19:31.685024");
INSERT INTO person_pet
    VALUES (23,51,"1992-04-29 13:19:31.685036");
INSERT INTO person_pet
    VALUES (68,53,"2002-05-14 10:19:31.685049");
INSERT INTO person_pet
    VALUES (57,5,"1991-09-27 18:19:31.685061");
INSERT INTO person_pet
    VALUES (52,24,"1972-03-17 09:19:31.685072");
INSERT INTO person_pet
    VALUES (95,20,"2003-12-26 17:19:31.685084");
INSERT INTO person_pet
    VALUES (89,94,"1983-04-06 23:19:31.685095");
INSERT INTO person_pet
    VALUES (7,75,"1975-04-07 13:19:31.685107");
INSERT INTO person_pet
    VALUES (11,67,"1995-02-06 11:19:31.685118");
INSERT INTO person_pet
    VALUES (68,77,"2003-01-15 09:19:31.685130");
INSERT INTO person_pet
    VALUES (11,61,"2013-10-25 00:19:31.685142");
INSERT INTO person_pet
    VALUES (69,77,"1992-07-09 03:19:31.685153");
INSERT INTO person_pet
    VALUES (14,61,"2013-07-24 16:19:31.685164");
INSERT INTO person_pet
    VALUES (38,61,"1987-12-28 03:19:31.685176");
INSERT INTO person_pet
    VALUES (54,43,"2004-04-05 05:19:31.685188");
INSERT INTO person_pet
    VALUES (20,89,"1998-05-14 09:19:31.685199");
INSERT INTO person_pet
    VALUES (24,26,"1968-04-23 15:19:31.685211");
INSERT INTO person_pet
    VALUES (59,90,"2005-04-16 15:19:31.685223");
INSERT INTO person_pet
    VALUES (23,75,"1996-04-05 23:19:31.685235");
INSERT INTO person_pet
    VALUES (8,68,"1988-06-26 13:19:31.685246");
INSERT INTO person_pet
    VALUES (18,70,"2016-01-15 20:19:31.685257");
INSERT INTO person_pet
    VALUES (39,47,"1983-07-14 06:19:31.685269");
INSERT INTO person_pet
    VALUES (17,73,"2004-10-27 06:19:31.685280");
INSERT INTO person_pet
    VALUES (53,92,"1982-09-12 10:19:31.685292");
INSERT INTO person_pet
    VALUES (56,72,"2012-02-12 03:19:31.685303");
INSERT INTO person_pet
    VALUES (29,15,"1975-11-09 16:19:31.685315");
INSERT INTO person_pet
    VALUES (18,59,"1973-03-13 05:19:31.685326");
INSERT INTO person_pet
    VALUES (88,88,"1983-06-22 10:19:31.685338");
INSERT INTO person_pet
    VALUES (57,94,"1998-08-14 09:19:31.685349");
INSERT INTO person_pet
    VALUES (57,61,"1976-01-09 08:19:31.685361");
INSERT INTO person_pet
    VALUES (49,38,"2015-09-14 09:19:31.685372");
INSERT INTO person_pet
    VALUES (35,93,"1994-06-23 01:19:31.685384");
INSERT INTO person_pet
    VALUES (37,26,"1981-08-23 09:19:31.685395");
INSERT INTO person_pet
    VALUES (87,77,"2000-08-06 11:19:31.685407");
INSERT INTO person_pet
    VALUES (72,40,"2006-12-28 21:19:31.685418");
INSERT INTO person_pet
    VALUES (39,80,"1999-05-04 14:19:31.685430");
INSERT INTO person_pet
    VALUES (50,32,"2009-06-01 10:19:31.685441");
INSERT INTO person_pet
    VALUES (53,93,"2009-12-09 00:19:31.685452");
INSERT INTO person_pet
    VALUES (58,8,"1988-09-12 02:19:31.685464");
INSERT INTO person_pet
    VALUES (64,25,"1971-09-18 04:19:31.685475");
INSERT INTO person_pet
    VALUES (16,30,"2001-07-20 23:19:31.685487");
INSERT INTO person_pet
    VALUES (19,43,"1979-10-12 18:19:31.685498");
INSERT INTO person_pet
    VALUES (11,88,"1999-11-15 00:19:31.685510");
INSERT INTO person_pet
    VALUES (89,67,"2004-05-29 09:19:31.685522");
INSERT INTO person_pet
    VALUES (26,64,"2014-10-24 22:19:31.685533");
INSERT INTO person_pet
    VALUES (53,70,"1996-02-13 20:19:31.685544");
INSERT INTO person_pet
    VALUES (95,79,"1981-05-09 06:19:31.685556");
INSERT INTO person_pet
    VALUES (18,90,"2015-10-27 16:19:31.685568");
INSERT INTO person_pet
    VALUES (48,76,"2002-09-30 20:19:31.685579");
INSERT INTO person_pet
    VALUES (58,91,"1999-01-02 16:19:31.685591");
INSERT INTO person_pet
    VALUES (55,34,"1987-09-06 18:19:31.685603");
INSERT INTO person_pet
    VALUES (27,88,"1977-10-22 19:19:31.685614");
INSERT INTO person_pet
    VALUES (92,44,"2017-04-05 00:19:31.685626");
INSERT INTO person_pet
    VALUES (45,40,"2011-04-11 16:19:31.685638");
INSERT INTO person_pet
    VALUES (87,45,"1998-11-22 22:19:31.685649");
INSERT INTO person_pet
    VALUES (92,53,"2000-03-19 04:19:31.685661");
INSERT INTO person_pet
    VALUES (31,45,"1974-09-17 15:19:31.685672");
INSERT INTO person_pet
    VALUES (39,15,"1995-10-25 10:19:31.685684");
INSERT INTO person_pet
    VALUES (33,76,"1982-11-24 07:19:31.685695");
INSERT INTO person_pet
    VALUES (26,72,"2005-10-24 16:19:31.685707");
INSERT INTO person_pet
    VALUES (25,61,"1983-05-03 05:19:31.685718");
INSERT INTO person_pet
    VALUES (51,93,"1973-08-09 19:19:31.685730");
INSERT INTO person_pet
    VALUES (27,91,"1993-09-22 00:19:31.685742");
INSERT INTO person_pet
    VALUES (15,57,"1977-11-05 21:19:31.685753");
INSERT INTO person_pet
    VALUES (60,28,"1969-06-10 09:19:31.685765");
INSERT INTO person_pet
    VALUES (68,8,"1981-09-02 21:19:31.685776");
INSERT INTO person_pet
    VALUES (43,37,"2017-03-16 13:19:31.685787");
INSERT INTO person_pet
    VALUES (61,65,"2013-05-27 05:19:31.685799");
INSERT INTO person_pet
    VALUES (45,55,"1984-11-18 16:19:31.685810");
INSERT INTO person_pet
    VALUES (58,41,"1985-06-25 02:19:31.685822");
INSERT INTO person_pet
    VALUES (91,53,"1983-05-07 19:19:31.685834");
INSERT INTO person_pet
    VALUES (56,86,"2001-07-01 14:19:31.685845");
INSERT INTO person_pet
    VALUES (44,19,"1971-10-10 18:19:31.685857");
INSERT INTO person_pet
    VALUES (35,35,"2017-02-21 14:19:31.685868");
INSERT INTO person_pet
    VALUES (19,27,"1984-04-05 21:19:31.685880");
INSERT INTO person_pet
    VALUES (25,23,"1996-07-21 06:19:31.685891");