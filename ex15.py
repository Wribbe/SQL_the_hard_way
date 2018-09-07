#!/usr/bin/env python3

import random
import datetime

names = [w.strip().capitalize() for w in open("names.txt").readlines()]
breeds = ["Dog", "Cat", "Fish", "Unicorn"]

middle = int(len(names)/2)
names_pets, names_owners = [names[:middle], names[middle:]]

insert_owner = """INSERT INTO person
    VALUES (NULL, "{first}", "{last}", {age}, "{dob}");"""

insert_pet = """INSERT INTO pet
    VALUES (NULL, "{name}", "{breed}", {age}, "{dead}");"""

insert_relation = """INSERT INTO person_pet
    VALUES ({person_id},{pet_id},"{purchased_on}");"""

sql = [\
"""\
CREATE TABLE person (
    id INTEGER PRIMARY KEY
    ,first_name TEXT
    ,last_name TEXT
    ,age INTEGER
    ,dob DATETIME
);""",
"""\
CREATE TABLE pet (
    id INTEGER PRIMARY KEY
    ,name TEXT
    ,breed TEXT
    ,age INTEGER
    ,dead INTEGER
);
""",
"""\
CREATE TABLE person_pet (
    person_id INTEGER
    ,pet_id INTEGER
    ,purchased_on DATETIME
);
"""
]

def random_date():
    years = 365 * random.randint(0, 50)
    days = random.randint(0, 365)
    hours = random.randint(0, 24)
    past = datetime.timedelta(days = years + days, hours=hours)
    return datetime.datetime.now() - past

# Make a bunch of pets.
for i in range(100):
    age = random.randint(0, 20)
    breed = random.choice(breeds)
    name = random.choice(names_pets)
    dead = random.randint(0, 1)
    sql.append(insert_pet.format(age=age, breed=breed, name=name, dead=dead))

# Make a bunch of random people.
for i in range(100):
    age = random.randint(0, 100)
    first = random.choice(names_owners)
    last = random.choice(names_owners)
    dob = random_date()
    sql.append(insert_owner.format(first=first, last=last, age=age, dob=dob))

# Only sample the middle of IDs -> Unowned pets, owners w/o pets.
for i in range(75):
    person_id = random.randint(5,95)
    pet_id = random.randint(5,95)
    purchased_on = random_date()
    sql.append(insert_relation.format(person_id=person_id, pet_id=pet_id,
                                      purchased_on=purchased_on))

with open("ex15.sql", "w") as output:
    output.write("\n".join(sql))
