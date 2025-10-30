CREATE DATABASE 4e_1_select;
use 4e_1_select;

CREATE TABLE `towar` (
  `NAZWA` varchar(14) DEFAULT NULL,
  `RODZAJ` varchar(2) DEFAULT NULL,
  `CENA` decimal(8,2) DEFAULT NULL,
  `DATA_PROD` varchar(10) DEFAULT NULL,
  `ZAMOW` varchar(6) DEFAULT NULL,
  `ILOSC` int(4) DEFAULT NULL,
  `WAGA` decimal(8,3) DEFAULT NULL
);
 
INSERT INTO `towar` VALUES ('SEN SOLTYSA','SP',4.05,'1999-05-12','PRAWDA',20,0.700),('SANSOT','SP',6.50,'1999-06-24','PRAWDA',40,0.700),('SANGRIA','SP',9.99,'1999-06-21','PRAWDA',25,1.500),('PRASKA','SP',19.50,'1999-06-15','FAŁSZ',30,0.500),('SMIRNOF','SP',49.50,'1999-05-25','PRAWDA',40,0.700),('WYBOROWA','SP',19.90,'1998-10-25','FAŁSZ',40,0.500),('LUXUSOWA','SP',19.90,'1999-05-13','PRAWDA',20,0.250),('PREMIUM','SP',35.30,'1998-12-12','PRAWDA',32,1.000),('WISNIOWA','SP',16.50,'1998-10-27','PRAWDA',20,0.100),('SPIRYTUS','SP',34.30,'1999-05-20','FAŁSZ',10,0.500),('srubka','NA',17.00,'1998-11-09','PRAWDA',20,2.000),('nakretka','NA',0.15,'1997-11-22','FAŁSZ',40,1.200),('kombajn','TR',25001.00,'1978-12-22','PRAWDA',2,3000.000),('Boeing777','TR',700000.00,'1995-07-22','PRAWDA',1,50000.000),('brony','NA',2100.00,'1998-10-25','FAŁSZ',10,2.100),('srubki','NA',0.12,'1998-02-04','FAŁSZ',100,1.000),('sekator','NA',10.00,'1998-05-04','PRAWDA',20,1.500),('lopata','NA',10.00,'1998-10-25','PRAWDA',4,40.000),('widly','NA',15.00,'1998-10-25','FAŁSZ',2,3.000),('woda gazowana','SP',1.00,'1900-10-02','PRAWDA',100,1.000),('napoj niegaz','SP',2.00,'1900-10-03','PRAWDA',120,1.000),('piwo Warka','SP',3.00,'1900-11-04','FAŁSZ',100,0.500),('piwo Zywiec','SP',3.20,'1900-10-10','FAŁSZ',100,0.500),('piwo Lech','SP',3.00,'1900-09-06','FAŁSZ',100,0.500),('emulgator','IN',12.99,'1999-12-12','PRAWDA',100,10.001),('wiadro','GD',20.11,'1994-11-13','FAŁSZ',12,2.002),('siano','SP',1.11,'1988-11-15','PRAWDA',1000,2.002),('piwo','SP',2.11,'1999-12-08','PRAWDA',100,1.005),('wino','SP',7.00,'1991-11-01','FAŁSZ',23,1.015),('Cegla','NA',15.50,'1993-02-03','PRAWDA',100,0.500),('Cement','IN',45.50,'1996-05-09','PRAWDA',10,0.500),('Stal','IN',40.00,'1991-04-06','PRAWDA',20,0.500),('wapno','IN',40.00,'1999-08-08','PRAWDA',20,20.500),('Kostka','IN',80.00,'1991-02-09','PRAWDA',20,30.500),('Rower','TR',200.00,'1997-10-25','PRAWDA',120,50.500),('Pret','IN',1.00,'1998-07-20','PRAWDA',10,2.500),('Plaskownik','IN',11.00,'1998-07-26','FAŁSZ',100,0.500),('Nasiona','GD',51.00,'1998-07-24','PRAWDA',50,2.500),('Ziemniaki','SP',0.90,'1998-07-29','FAŁSZ',100,1.000),('pilka','IN',25.00,'1998-08-12','PRAWDA',10,0.500),('buty','TR',235.00,'1998-04-20','FAŁSZ',15,0.100),('rakieta','IN',185.00,'1998-08-20','PRAWDA',5,0.300),('rekawice','IN',85.00,'1998-08-02','PRAWDA',14,0.010),('pompka','IN',10.00,'1998-11-23','PRAWDA',12,0.010),('dresy','IN',250.00,'1998-10-29','PRAWDA',30,0.030),('kurtka','IN',155.00,'1998-12-12','PRAWDA',8,0.200),('okulary','IN',45.00,'1998-11-02','FAŁSZ',6,0.010),('plecak','IN',300.00,'1998-11-23','FAŁSZ',6,0.400),('narty','TR',350.00,'1998-11-22','PRAWDA',10,1.000),('pilka','IN',30.00,'1998-11-12','FAŁSZ',100,0.360),('buty','TR',200.00,'1998-11-23','PRAWDA',100,0.600),('rekawice','IN',150.00,'1998-12-20','FAŁSZ',10,0.400),('rakieta','IN',300.00,'1998-12-10','FAŁSZ',20,0.450),('pilka','IN',100.00,'1998-12-01','PRAWDA',100,0.400),('pilka','IN',10.00,'1998-12-09','FAŁSZ',200,0.400),('pompka','IN',20.00,'1998-12-06','FAŁSZ',30,0.300),('dresy','IN',300.00,'1999-04-06','PRAWDA',20,0.300),('kurtki','IN',400.00,'1999-06-05','PRAWDA',20,0.700),('okulary','IN',40.00,'1999-03-15','PRAWDA',20,0.006),('srubka','NA',15.00,'1998-10-25','PRAWDA',20,0.004),('nakretka','NA',0.15,'1997-11-22','FAŁSZ',40,0.002),('kombajn','TR',24500.00,'1976-10-03','FAŁSZ',2,3000.000),('Ursus 3','TR',17000.00,'1988-02-22','PRAWDA',1,1500.000),('TU-114','TR',907000.00,'1994-06-30','PRAWDA',1,50000.000),('silnik','NA',2000.00,'1997-12-12','PRAWDA',2,20.000),('lopaty wirnika','NA',3000.00,'1998-10-25','FAŁSZ',4,200.000),('olej silnikowy','TR',100.00,'1999-05-15','PRAWDA',3,15.000),('kurnik','GD',300.00,'1997-07-30','PRAWDA',1,150.000),('telewizor','GD',1000.00,'1997-04-28','PRAWDA',12,10.300),('CD','GD',1500.00,'1997-04-12','PRAWDA',8,8.000),('Tape','GD',900.00,'1997-04-02','FAŁSZ',5,8.900),('DVD','GD',2000.00,'1997-04-28','FAŁSZ',2,10.900),('Kastey','GD',10.00,'1998-05-12','FAŁSZ',50,0.100),('Wzmacniacz','GD',1300.00,'1998-05-02','FAŁSZ',8,12.100),('Walkman','GD',800.00,'1998-05-17','PRAWDA',12,1.000),('CD audio','GD',50.00,'1998-05-27','PRAWDA',100,0.100);
-- Wyświetl towary, które spełniają warunki:

-- Towary, których WAGA >150 kg;

SELECT *
FROM towar
WHERE WAGA >150;

-- całkowita wartość pola CENA jest trzycyfrowa;

SELECT *
FROM towar
WHERE cena >=100 and cena <1000;

-- 23% podatek od jednej sztuki wynosi więcej niż 750 zł;

SELECT *
FROM towar 
WHERE cena*0.23 > 750;

-- ILOSC < 5 i dodatkowo  CENA < 10 zł lub CENA >10000 zł;

SELECT *
FROM towar
WHERE ILOSC <5 and (cena <10 or cena >10000);

-- cena 1 kg (CENA / WAGA) jest mniejsza od 10 zł i równocześnie większa od 5 zł;

SELECT *
FROM towar
WHERE cena/waga <10 and cena/waga >5;

-- całkowita masa (ILOSC * WAGA) jest większa od ceny, a mniejsza od potrójnej ceny;

SELECT *
FROM towar
WHERE ilosc*waga >cena and ilosc*waga <3*cena;

-- tylko ZAMÓWIONE towary, których waga =1;

SELECT *
FROM towar
WHERE ZAMOW ='PRAWDA' and waga =1;

-- nazwy towarów, których RODZAJ = NA i GD (również małymi literami);

SELECT *
FROM towar
WHERE RODZAJ in('NA','GD');

-- wyświetl nazwy towarów, które nie zawierają litery a w NAZWIE;

SELECT *
FROM towar
WHERE nazwa not LIKE '%a%';

-- Wyprodukowane w 1997 roku;

SELECT *
FROM towar
WHERE DATA_PROD like '1997%';

-- (DATA_PROD - od początku 1995 roku do końca 1998,) CENA jest dwucyfrowa, WAGA < 0.5;

SELECT *
FROM towar
WHERE DATA_PROD BETWEEN '1995-01-01' and '1998-12-31' and cena between 10 and 100 and waga < 0.5;

-- jw. wyświetl tylko NAZWĘ, RODZAJ I CENĘ;

SELECT NAZWA, RODZAJ, cena
FROM towar
WHERE DATA_PROD BETWEEN '1995-01-01' and '1998-12-31' and cena between 10 and 100 and waga < 0.5;

-- rekordy w których CENA jest pomiędzy 12,50 a 35 i WAGA jest pomiędzy 0,5 a 2,5;

SELECT *
FROM towar
WHERE CENA between 12.50 and 35
    and waga BETWEEN 0.5 and 2.5;

-- jw. - wyświetl tylko NAZWĘ, RODZAJ i wartość (ILOSC * CENA) ;

SELECT nazwa, RODZAJ, ilosc*cena
FROM towar
WHERE CENA between 12.50 and 35
    and waga BETWEEN 0.5 and 2.5;

-- jw. posortowane malejąco wg NAZWY ; 

SELECT nazwa, RODZAJ, ilosc*cena
FROM towar
WHERE CENA between 12.50 and 35
    and waga BETWEEN 0.5 and 2.5
ORDER BY nazwa desc;

-- różne RODZAJE towarów (bez powtórek) ; (wskazówka: SELECT DISTINCT...)

SELECT RODZAJ
FROM towar
