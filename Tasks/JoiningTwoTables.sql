CREATE TABLE persons (
    id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    name TEXT,
    age INTEGER);
    
INSERT INTO persons (name, age) VALUES ('Bobby McBobbyFace', 12);
INSERT INTO persons (name, age) VALUES ('Lucy BoBucie', 25);
INSERT INTO persons (name, age) VALUES ('Banana FoFanna', 14);
INSERT INTO persons (name, age) VALUES ('Shish Kabob', 20);
INSERT INTO persons (name, age) VALUES ('Fluffy Sparkles', 8);
INSERT INTO persons (name, age) VALUES ('Sparkles', 10);

CREATE table hobbies (
    id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    person_id INTEGER,
    name TEXT);
    
INSERT INTO hobbies (person_id, name) VALUES (1, 'drawing');
INSERT INTO hobbies (person_id, name) VALUES (1, 'coding');
INSERT INTO hobbies (person_id, name) VALUES (2, 'dancing');
INSERT INTO hobbies (person_id, name) VALUES (2, 'coding');
INSERT INTO hobbies (person_id, name) VALUES (3, 'skating');
INSERT INTO hobbies (person_id, name) VALUES (3, 'rowing');
INSERT INTO hobbies (person_id, name) VALUES (3, 'drawing');
INSERT INTO hobbies (person_id, name) VALUES (4, 'coding');
INSERT INTO hobbies (person_id, name) VALUES (4, 'dilly-dallying');
INSERT INTO hobbies (person_id, name) VALUES (4, 'meowing');
INSERT INTO hobbies (person_id, name) VALUES (5, 'drawing');

/* Joining two tables to display their name next to their hobbies */
SELECT
    persons.name, hobbies.name
FROM persons
    JOIN hobbies
    ON persons.id = hobbies.person_id;
    
/* only displaying the query that matches a specific name*/  
SELECT
    persons.name, hobbies.name
FROM persons
    JOIN hobbies
    ON persons.id = hobbies.person_id
    WHERE persons.name LIKE '%Bobby McBobbyFace%';