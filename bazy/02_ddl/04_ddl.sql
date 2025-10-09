CREATE DATABASE 4e_1_naukowcy;
USE 4e_1_naukowcy;

create table Pracownicy(
  SSN int,
  data_urodzenia date,
  Nazwisko Char(30) not null
);
Create table Projekty(
  Nazwa Char(50) not null,
  miejsce varchar(40)
);
create table Posredniczaca(
    Projekt int not null,
	SSN int not null
  );

ALTER TABLE posredniczaca
RENAME to przypisanie;

ALTER TABLE Pracownicy
CHANGE SSN kod int primary key AUTO_INCREMENT;

alter TABLE Projekty 
add kod Char(4) primary key first;

ALTER TABLE przypisanie
MODIFY Projekt Char(4);

ALTER TABLE przypisanie
ADD primary key(Projekt, SSN);

ALTER TABLE Projekty
alter miejsce set default 'bydgoszcz';

ALTER TABLE Projekty
ADD czas int AFTER nazwa;

ALTER TABLE Projekty
drop miejsce;

ALTER TABLE Pracownicy
MODIFY nazwisko varchar(50);

ALTER TABLE Projekty
alter czas set default 100;

ALTER table Pracownicy
RENAME to naukowcy;

alter TABLE przypisanie
MODIFY Projekt Char(4) AFTER SSN;

ALTER TABLE przypisanie
CHANGE SSN naukowiec int;

INSERT INTO Naukowcy(Kod,Nazwisko) 
  VALUES(123234877,'Michael Rogers'),
    (152934485,'Anand Manikutty'),
    (222364883, 'Carol Smith'),
    (326587417,'Joe Stevens'),
    (332154719,'Mary-Anne Foster'),	
    (332569843,'George ODonnell'),
    (546523478,'John Doe'),
    (631231482,'David Smith'),
    (654873219,'Zacary Efron'),
    (745685214,'Eric Goldsmith'),
    (845657245,'Elizabeth Doe'),
    (845657246,'Kumar Swamy');
 INSERT INTO Projekty( Kod,Nazwa,Czas)
 VALUES ('AeH1','Winds: Studying Bernoullis Principle', 156),
       ('AeH2','Aerodynamics and Bridge Design',189),
       ('AeH3','Aerodynamics and Gas Mileage', 256),
       ('AeH4','Aerodynamics and Ice Hockey', 789),
       ('AeH5','Aerodynamics of a Football', 98),
       ('AeH6','Aerodynamics of Air Hockey',89),
       ('Ast1','A Matter of Time',112),
       ('Ast2','A Puzzling Parallax', 299),
       ('Ast3','Build Your Own Telescope', 6546),
       ('Bte1','Juicy: Extracting Apple Juice with Pectinase', 321),
       ('Bte2','A Magnetic Primer Designer', 9684),
       ('Bte3','Bacterial Transformation Efficiency', 321),
       ('Che1','A Silver-Cleaning Battery', 545),
       ('Che2','A Soluble Separation Solution', 778);
 INSERT INTO Przypisanie( Naukowiec, Projekt)
   VALUES (123234877,'AeH1'),
    (152934485,'AeH3'),
    (222364883,'Ast3'),	   
    (326587417,'Ast3'),
    (332154719,'Bte1'),
    (546523478,'Che1'),
    (631231482,'Ast3'),
    (654873219,'Che1'),
    (745685214,'AeH3'),
    (845657245,'Ast1'),
    (845657246,'Ast2'),
    (332569843,'AeH4');

ALTER TABLE przypisanie
ADD foreign key(naukowiec) references naukowcy(kod), 
ADD foreign key(projekt) references Projekty(kod);