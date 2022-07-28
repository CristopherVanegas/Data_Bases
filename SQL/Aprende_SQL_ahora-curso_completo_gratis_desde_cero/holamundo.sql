create database holamundo;
show databases;

use holamundo;
CREATE TABLE animales (
	id int,
    tipo varchar(255),
    estado varchar(255),
    PRIMARY KEY (id)
);

-- INSERT INTO animales (tipo, estado) VALUES ('chanchito', 'feliz');
-- esta línea no será ejecutada

ALTER TABLE animales MODIFY COLUMN  id int auto_increment;

SHOW CREATE TABLE animales;

CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO animales (tipo, estado) VALUES ('chanchito', 'feliz');
INSERT INTO animales (tipo, estado) VALUES ('dragon', 'feliz');
INSERT INTO animales (tipo, estado) VALUES ('felipe', 'triste');

SELECT * FROM animales;							-- SELECTS ALL COLUMNS FROM animales.
SELECT * FROM animales WHERE id = 4;			-- SELECTS ALL COLUMNS FROM animales DONDE id ES IGUAL A 4
SELECT * FROM animales WHERE estado = 'feliz';	-- SELECTS ALL COLUMNS FROM animales DONDE estado ES IGUAL A 'feliz'.
