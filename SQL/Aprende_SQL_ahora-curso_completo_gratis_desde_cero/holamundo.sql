
-- CREATE

create database holamundo;
show databases;

use holamundo; -- THIS LINE SHOULD BE USE EVERYTIME 'WORKBENCH IT'S RESET.'animaleslocation

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



-- INSERT

INSERT INTO animales (tipo, estado) VALUES ('chanchito', 'feliz');
INSERT INTO animales (tipo, estado) VALUES ('dragon', 'feliz');
INSERT INTO animales (tipo, estado) VALUES ('felipe', 'triste');

SELECT * FROM animales;							-- SELECTS ALL COLUMNS FROM animales.
SELECT * FROM animales WHERE id = 4;			-- SELECTS ALL COLUMNS FROM animales DONDE id ES IGUAL A 4
SELECT * FROM animales WHERE estado = 'feliz' AND tipo = 'chanchito';	-- SELECTS ALL COLUMNS FROM animales DONDE estado ES IGUAL A 'feliz' Y tipo ES IGUAL A 'chanchito'.



-- UPDATE

UPDATE animales SET estado = 'feliz' where id = 5;
UPDATE animales SET estado = 'neutro' where id = 6;
SELECT * FROM animales;



-- DELETE REGISTER

DELETE from animales where estado = 'feliz'; -- Error Code: 1175. 
											 -- You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column. 
                                             -- To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.

DELETE from animales where id = 3;
SELECT * FROM animales;

UPDATE animales set estado = 'triste' where tipo = 'dragon'; -- Same error 1175 as before because we're trying to affect a column. 
														     -- So as 'workbench' has the security option, it won't let us unless we desactivate that option or we specify an id.


