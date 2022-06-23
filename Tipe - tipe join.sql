use belajar_mysql;

select * from products;
select * from categories;

insert into categories (id, name)
values ("C004", "Oleh-Oleh"),
("C005", "Elektronik");

insert into products (id, name, price, quantity)
values ("X0001", "Rujak Buah", 12000, 100),
("X0002", "Handphone", 3000000, 25);

select * from categories
inner join products on (products.id_category = categories.id);

select * from categories
left join products on (products.id_category = categories.id);

select * from categories
right join products on (products.id_category = categories.id);

select * from categories
cross join products;

create table numbers
(
id int not null,
primary key (id)
) engine = innodb;

insert into numbers(id)
values (1), (2), (3), (4), (5);

select number1.id, number2.id, (number1.id * number2.id) as result
from numbers as number1
cross join numbers as number2
order by number1.id, number2.id;