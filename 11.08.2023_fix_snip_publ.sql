--CREATE DATABASE Publishment
CREATE TABLE Country (
    ID INT PRIMARY KEY,
    name NVARCHAR(50)
)

CREATE TABLE Shops (
    ID INT PRIMARY KEY,
    name NVARCHAR(50),
    id_country INT,
    FOREIGN KEY (id_country) REFERENCES Country(ID)
)

CREATE TABLE Authors (
    ID INT PRIMARY KEY,
    firstname NVARCHAR(50),
    lastname NVARCHAR(50),
    id_country INT,
    FOREIGN KEY (id_country) REFERENCES Country(ID)
)

CREATE TABLE Themes (
    ID INT PRIMARY KEY,
    name NVARCHAR(50)
)

CREATE TABLE Books (
    ID INT PRIMARY KEY,
    name NVARCHAR(50),
    id_theme INT,
    id_author INT,
    price FLOAT,
    date_of_publish DATE,
    pages INT,
    FOREIGN KEY (id_theme) REFERENCES Themes(ID),
    FOREIGN KEY (id_author) REFERENCES Authors(ID)
)

CREATE TABLE Sales (
    ID INT PRIMARY KEY,
    id_book INT,
    date_of_sale DATE,
    price FLOAT,
    quantity INT,
    id_shop INT,
    FOREIGN KEY (id_book) REFERENCES Books(ID),
    FOREIGN KEY (id_shop) REFERENCES Shops(ID)
)
