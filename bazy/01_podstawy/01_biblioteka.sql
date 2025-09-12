-- start
show databases;
mysql -u root;
CREATE DATABASE 4e_1_biblioteka; 
SHOW databases;
USE 4e_1_biblioteka;
CREATE TABLE ksiazka(
    tytul varchar(255),
    autor varchar(255),
    cena int
);
SHOW TABLES;
DESC ksiazka;
INSERT INTO ksiazka
VALUES
('Harry Potter','J.K Rowling',25);
SELECT * FROM ksiazka;

INSERT INTO ksiazka
VALUES
('Lalak','Boleslaw Prus',50);
DELETE FROM ksiazka
WHERE tytul = 'Harry Potter';

ALTER TABLE ksiazka
ADD id int primary key AUTO_INCREMENT;
DELETE FROM ksiazka
WHERE id=1;
CREATE TABLE gatunki(
    id int primary key AUTO_INCREMENT,
    nazwa varchar(100)
);
ALTER TABLE ksiazka
ADD gatunek int;

INSERT INTO gatunki
(nazwa)
VALUES
('dramat'),
('komedia');

INSERT INTO ksiazka
(tytul,autor,gatunek)
VALUES
('Harry Potter','J.K. Rowling',3);

CREATE DATABASE 4e_1_wizyty;
USE 4e_1_wizyty;

CREATE TABLE wizyty(
    imie varchar(100),
    nazwisko varchar(100),
    telefon varchar(100),
    data_wizyty date,
    typ varchar(100)
);

INSERT INTO wizyty
VALUES
('Jan','Kowalski','21134212','2000-12-9','leczenie'); 

INSERT INTO wizyty
VALUES
('Jan','Kowalski','21134212','2000-12-10','profilaktyka');

INSERT INTO wizyty
VALUES
(Null,'Paweł','Kowalczyk','987654321','2000-12-20','kontrola')

ALTER TABLE wizyty
ADD id int primary key AUTO_INCREMENT first;

DELETE FROM wizyty 
WHERE id = 3;

INSERT INTO wizyty
VALUES
(Null,'Jan','Kowalski','21134212','2000-12-10','profliaktyka');

SELECT *
FROM wizyty
WHERE typ='profilaktyka';