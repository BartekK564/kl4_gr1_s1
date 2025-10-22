CREATE DATABASE 4e_1_projekty;
USE 4e_1_projekty;

CREATE TABLE Projekty(
    id_proektu int AUTO_INCREMENT primary key,
    nazwa_projektu varchar(255) not null,
    start_projektu date,
    koniec_projektu date,
    koszt dec(8,2),
    utworzony timestamp default current_timestamp
);

CREATE TABLE etapy_projektu(
    id_etapu tinyint unsigned,
    id_projektu int,
    opis_etapu varchar(255) not null,
    numer_etapu tinyint unsigned,
    ukonczony boolean,
    primary key(id_etapu, id_projektu), foreign key(id_projektu) references Projekty(id_proektu)
)

CREATE TABLE autorzy(
    id_autora int AUTO_INCREMENT primary key,
    nazwisko varchar(255) not null,
    pozycja enum('beginer', 'silver', 'gold'),
    wiek tinyint unsigned,
    data_od date default current_date
);

CREATE TABLE posty(
    id_postu int AUTO_INCREMENT primary key,
    tresc blob,
    kategoria enum( 'rozrywka', 'nauka', 'sport'),
    utworzony datetime default current_date
);

CREATE TABLE autorzy_postow(
    id_postu int,
    id_autora int,
    primary key(id_postu, id_autora),
    foreign key(id_postu) references posty(id_postu)
)