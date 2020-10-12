-- Hier maak ik een database aan.
CREATE DATABASE project1;

-- Hier maak ik een table aan
CREATE TABLE Account (
	ID int NOT NULL PRIMARY KEY,
    email varchar(255) UNIQUE,
    password varchar(255)
);

--hier maak ik een table aan
CREATE TABLE Persoon (
	ID int NOT NULL,
    firstname varchar(255),
    insertions varchar(255),
    lastname varchar(255),
    username varchar(255),
    accountID int,
    PRIMARY KEY (ID),
    FOREIGN KEY (accountID) REFERENCES Account(ID)
);