CREATE DATABASE 4e_1_vehicles;

CREATE TABLE vehicles(
    vehicleId int AUTO_INCREMENT primary key,
    year int,
    make varchar(100) not null
);

alter TABLE vehicles
add model varchar(100);

ALTER TABLE vehicles
add
    color varchar(50),
add 
    note varchar(255);

ALTER TABLE vehicles
MODIFY note varchar(100);

ALTER TABLE vehicles
MODIFY year smallint,
MODIFY color varchar(20) AFTER make;

ALTER TABLE vehicles
CHANGE note vehicleCondition varchar(100);

ALTER TABLE vehicles
DROP column vehicleCondition;

ALTER TABLE vehicles
MODIFY year smallint default 2025;

ALTER TABLE vehicles
RENAME TO cars;