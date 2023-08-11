--CREATE DATABASE Publishment
CREATE TABLE Sales(
ID INT PRIMARY KEY,
id_book INT,
date_of_sale DATE,
price FLOAT,
quantity INT,
id_shop INT)

CREATE TABLE Books(
ID INT PRIMARY KEY,
name NVARCHAR(50),
id_theme INT,
id_author INT,
price FLOAT,
date_of_publish DATE,
pages INT)

CREATE TABLE Themes(
ID INT PRIMARY KEY,
name NVARCHAR(50))

CREATE TABLE Authors(
ID INT PRIMARY KEY,
firstname NVARCHAR(50),
lastname NVARCHAR(50),
id_country INT)

CREATE TABLE Country(
ID INT PRIMARY KEY,
name NVARCHAR(50))

CREATE TABLE Shops(
ID INT PRIMARY KEY,
name NVARCHAR(50),
id_country INT)

SELECT Books.name, S1.date_of_sale
FROM Books
LEFT JOIN Sales AS S1 ON Books.ID = S1.id_book
LEFT JOIN Shops AS SH1 ON SH1.ID = S1.id_shop
LEFT JOIN Country AS C1 ON C1.ID = SH1.id_country
LEFT JOIN Authors AS A1 ON A1.id_country = C1.ID
LEFT JOIN Authors ON A1.ID = Books.id_author
LEFT JOIN Themes AS T1 ON T1.ID = Books.id_theme


