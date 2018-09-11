import sqlite3
conn = sqlite3.connect('ex22.db')

cursor = conn.cursor()

cursor.execute("""
SELECT * FROM
    person JOIN person_pet, pet
    ON person.id = person_pet.person_id
    AND pet.id = person_pet.pet_id
;
""")

headings = {des[0]: i for i,des in enumerate(cursor.description)}
dict_list = []
for row in cursor:
    temp_dict = {}
    for key, index in headings.items():
        temp_dict[key] = row[index]
    dict_list.append(temp_dict)

for d in dict_list:
    print(d)

headings = [des[0] for des in cursor.description]
dist_list = [{k: v} for (k,v) in zip(headings, row) for row in cursor]

conn.close()
