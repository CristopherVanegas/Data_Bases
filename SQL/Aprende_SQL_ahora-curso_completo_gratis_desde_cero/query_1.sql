CREATE TABLE user (
	id int not null auto_increment,
    name varchar(50) not null,
    edad int not null,
    email varchar(100) not null,
    primary key (id)
);

INSERT INTO user (name, edad, email) values ('Oscar', 25, 'oscar@gmail.com');
INSERT INTO user (name, edad, email) values ('Layla', 15, 'layla@gmail.com');
INSERT INTO user (name, edad, email) values ('Nicolas', 36, 'nico@gmail.com');
INSERT INTO user (name, edad, email) values ('Chanchito', 7, 'chanchito@gmail.com');

select * from user;
select * from user limit 2;	-- SHOWS the first two registers that the RDBMS encounters.
select * from user where edad > 15;
select * from user where edad >= 15;
select * from user where edad > 20 and email = 'nico@gmail.com';
select * from user where edad > 20 or email = 'layla@gmail.com';
select * from user where email != 'layla@gmail.com';
select * from user where edad between 15 and 30;
select * from user where email like '%nico%';	-- SHOWS me every register that's similar to the string BETWEEN %%
select * from user where email like 'chanchito%'; -- SHOWS me every register that STARTS with 'chanchito' BUT ends with anything.
select * from user where email like '%.com';	-- SHOWS every register that ENDS with '%.com' but before ENDS has enything else.

select * from user order by edad asc;	-- SHOWS the registers from DESCENDANT to ASCENDANT.
select * from user order by edad desc;	-- SHOWS the refisters from ASCENDANT to DESCENDANT.

select max(edad) as mayor from user;	-- SHOWS the MAXIMUN from column 'edad' AND SAVES that in a new TEMPORAL column called MAYOR from user.
select min(edad) as menor from user;	-- SHOWS the minimum from column 'edad' AND SAVES that in a new TEMPORAL column called MENOR from user.

select id, name from user;
select id, name as chanchito from user;	-- nombre
-- select name as nombre, id from user;
-- select name as nombre, id, edad as age from user where edad between 15 and 30;
-- select name as nombre, id as ID, edad as age from user;


