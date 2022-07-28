create database holamundo;
show databases;

use holamundo;
CREATE TABLE animales (
	id int,
    tipo varchar(255),
    estado varchar(255),
    PRIMARY KEY (id)
);

use holamundo;
CREATE TABLE location (
	id int,
    location varchar(255),
    animal varchar(255),
    
    PRIMARY KEY (id)
)
