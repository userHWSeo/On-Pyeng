-- Up
CREATE TABLE Person (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    email, TEXT
);

INSERT INTO Person (name, email) values ('James', 'Person1@Person.com');
INSERT INTO Person (name, email) values ('Mark', 'mark2@Person.com');
INSERT INTO Person (name, email) values ('Ed', 'edward3@Person.com');

-- Down
DROP TABLE Person;

