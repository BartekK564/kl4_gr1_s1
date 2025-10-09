CREATE TABLE `starocie` (
  `kolor` varchar(20) default NULL,
  `rok` varchar(4) default NULL,
  `marka` varchar(20) default NULL,
  `mo` varchar(20) default NULL,
  `koszt` float(10,3) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
 
INSERT INTO `starocie` (`kolor`,`rok`,`marka`,`mo`,`koszt`) VALUES ('srebrny','1998','Porsche','Boxter','17992.539');
INSERT INTO `starocie` (`kolor`,`rok`,`marka`,`mo`,`koszt`) VALUES (NULL,'2000','Jaguar','XJ','15995.000');
INSERT INTO `starocie` (`kolor`,`rok`,`marka`,`mo`,`koszt`) VALUES ('czerwony','2002','Cadillac','Escalade','40215.898');

ALTER TABLE starocie
RENAME to samochody;

ALTER TABLE samochody
add id_samochodu int AUTO_INCREMENT primary key first;

alter TABLE samochody
add numer varchar(16) AFTER id_samochodu;

alter TABLE samochody
CHANGE mo model varchar(20);

ALTER TABLE samochody
MODIFY kolor varchar(20) AFTER model,
MODIFY rok date first;

ALTER TABLE samochody
CHANGE koszt cena decimal(7,2);

ALTER TABLE samochody
DROP rok;

ALTER TABLE samochody
alter kolor set DEFAULT 'czarny';

ALTER TABLE samochody
alter kolor drop default;