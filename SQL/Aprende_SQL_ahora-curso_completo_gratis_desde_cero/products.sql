CREATE table products (
	id int not null auto_increment,
    name varchar(50) not null,
    created_by int not null,
    marca varchar(50) not null,
    primary key(id),
    foreign key(created_by) references user(id)
);

rename table products to product;

insert into product (name, created_by, marca)
values 
	('iPad', 1, 'Apple'),
    ('iPhone', 1, 'Apple'),
    ('AppleWatch', 2, 'Apple'),
    ('MacBook', 1, 'Apple'),
    ('iMac', 3, 'Apple'),
    ('iPad Mini', 2, 'Apple');

select * from product;


-- LEFT-JOIN	-	BRINGS THE USER TABLE AND PRODUCTS ONLY IF THEY'VE BEEN CREATED BY THEM.
select u.id, u.email, p.name from user u left join product p on u.id = p.created_by;

-- RIGHT-JOIN
select u.id, u.email, p.name from user u right join product p on u.id = p.created_by;


















