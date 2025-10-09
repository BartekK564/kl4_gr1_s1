CREATE TABLE `projekty` (
  `numer` int(11) NOT NULL default '0',
  `infooproj` varchar(50) default NULL,
  `nazwfirmwyk` varchar(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
 
INSERT INTO `projekty` (`numer`,`infooproj`,`nazwfirmwyk`) VALUES ('1','malowanie elewacji domu','SUP-Rem');
INSERT INTO `projekty` (`numer`,`infooproj`,`nazwfirmwyk`) VALUES ('2','instalacja nowej kuchni','RemBudSzpachelka');
INSERT INTO `projekty` (`numer`,`infooproj`,`nazwfirmwyk`) VALUES ('3','położenie drewnianej podłogi','Kem-Rem');
INSERT INTO `projekty` (`numer`,`infooproj`,`nazwfirmwyk`) VALUES ('4','przekładka dachu','Jackowski i Syn');

ALTER TABLE projekty
RENAME to Lista_projektow;

ALTER TABLE Lista_projektow
CHANGE numer id_projektu int primary key AUTO_INCREMENT not null;

ALTER TABLE Lista_projektow
CHANGE infooproj opis_projektu varchar(100);

ALTER TABLE Lista_projektow
CHANGE nazwfirmwyk nazwa_wykonawcy varchar(30);

ALTER TABLE Lista_projektow
MODIFY nazwa_wykonawcy varchar(120);

alter TABLE Lista_projektow
add
  telefon varchar(14),
add
  data_pocztowa date,
add 
  koszt decimal(8,2);

alter TABLE Lista_projektow
DROP data_pocztowa;