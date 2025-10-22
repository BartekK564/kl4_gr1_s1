CREATE DATABASE 4e_1_firma;
USE 4e_1_firma;

CREATE TABLE Pracownicy(
    idpracownik int,
    imie_nazwisko varchar(100),
    jezyk varchar(100),
    adres varchar(100)
);

. wpisz dane:




INSERT INTO Pracownicy
VALUES
(1, 'Jan Kowalski', 'PHP', 'os. Wł. Łokietka 3/4 Naklo nad Notecia'),
(2, 'Antoni Malinowski', 'HTML CSS PHP' , 'Chrzastowo 1'),
(3, 'Jan Malinowski', 'Java  HTML', 'ul. Ogrodowa 2, Nowa Wies Wielka'),
(4, 'Andrzej Ziemianski', 'JavaScript CSS HTML','ul. Sowia 5, Nowa Wies');

SELECT * FROM Pracownicy
WHERE jezyk like '%PHP%';

SELECT * FROM Pracownicy
WHERE jezyk like '%Java%';

SELECT * FROM Pracownicy
WHERE adres like '%Naklo nad Notecia%';

SELECT * FROM Pracownicy
WHERE miejscowosc like '%Nowa Wies%';

DROP TABLE Pracownicy;

CREATE TABLE Pracownicy(
    id_pracownika int,
    imie varchar(100),
    nazwisko varchar(100),
    jezyk varchar(100),
    miejscowosc varchar(100),
    numer_domu varchar(100),
    ulica varchar(100)
);

INSERT INTO Pracownicy
(id_pracownika, imie, nazwisko, jezyk, ulica, numer_domu, miejscowosc)
VALUES
(1, 'Jan', 'Kowalski', 'PHP', 'os. Wł. Łokietka', '3/4', 'Naklo nad Notecia'),
(2, 'Antoni', 'Malinowski', 'HTML', '', '1', 'Chrzastowo'),
(2, 'Antoni', 'Malinowski', 'CSS', '', '1', 'Chrzastowo'),
(2, 'Antoni', 'Malinowski', 'PHP', '', '1', 'Chrzastowo'),
(3, 'Jan', 'Malinowski', 'Java  HTML', 'ul. Ogrodowa', '2', 'Nowa Wies Wielka'),
(3, 'Jan', 'Malinowski', 'Java', 'ul. Ogrodowa', '2', 'Nowa Wies Wielka'),
(4, 'Andrzej', 'Ziemianski', 'JavaScript','ul. Sowia', '5', 'Nowa Wies'),
(4, 'Andrzej', 'Ziemianski', 'CSS','ul. Sowia', '5', 'Nowa Wies'),
(4, 'Andrzej', 'Ziemianski', 'HTML','ul. Sowia', '5', 'Nowa Wies');

SELECT * FROM Pracownicy
WHERE jezyk='Java';

SELECT * FROM Pracownicy
WHERE miejscowosc='nowa wies';

SELECT miejscowosc 
FROM Pracownicy
ORDER BY miejscowosc;

SELECT DISTI