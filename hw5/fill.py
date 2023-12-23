import psycopg2
from mimesis import Person
from mimesis.enums import Gender
import random

conn = psycopg2.connect(
    dbname="postgres", 
    user="posgres", 
    password="password", 
    host="localhost"
)

cursor = conn.cursor()


person = Person('ru')

for _ in range(1000):
    last_name = person.last_name()
    first_name = person.first_name()
    middle_name = person.middle_name(gender=Gender.MALE)
    birth_date = person.date_of_birth(minimum=18, maximum=60).isoformat()
    profession = person.occupation()
    nationality = person.nationality()
    phone_number = person.telephone()
    email = person.email()

    cursor.execute("INSERT INTO users (last_name, first_name, middle_name, birth_date, profession, nationality, phone_number, email) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)", 
                   (last_name, first_name, middle_name, birth_date, profession, nationality, phone_number, email))
    conn.commit()


cursor.close()
conn.close()