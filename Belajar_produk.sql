use belajar_mysql;

create table products
(
id varchar(10) not null,
name varchar(30) not null,
description text,
price int unsigned not null,
quantity int unsigned not null default 0,
created_at timestamp not null default current_timestamp
constraint price_check check (price >= 1000)
) engine = InnoDB;

SHOW TABLES;

desc products;

insert into products(id, name, price, quantity)
values ("P0001", "Mie Ayam", 15000, 100);

insert into products(id, name, description, price, quantity)
values ("P0002", "Mie Ayam Bakso Sosis", "Mie Ayam + Bakso + Sosis", 25000, 50);

insert into products(id, name, price, quantity)
values ("P0003", "Mie Ayam Ceker", 17000, 30),
("P0004", "Mie Ayam Bakso", 16000, 10),
("P0005", "Mie Ayam Sosis", 18000, 70);

insert into products(id, name, price, quantity)
values ("P0006", "Bakso Tahu", 5000, 130),
("P0007", "Bakso Kikil", 12000, 60),
("P0008", "Bakso Kepala Sapi", 30000, 5),
("P0009", "Bakso Kambing", 25000, 2),
("P0010", "Bakso Urat", 10000, 20),
("P0011", "Bakso Ayam", 7000, 30),
("P0012", "Mie Ayam Tulang Sapi", 40000, 10),
("P0013", "Mie Ayam Tulang Kambing", 30000, 10),
("P0014", "Mie Ayam Pangsit", 12000, 100),
("P0015", "Mie Pangsit Ayam", 20000, 23),
("P0016", "Mie Pangsit Kambing", 28000, 12),
("P0017", "Mie Pangsit Sapi", 35000, 5),
("P0018", "Soto Babat", 13000, 70),
("P0019", "Soto Lamongan", 16000, 100),
("P0020", "Soto Betawi", 19500, 20),
("P0021", "Susu Sapi Rasa Coklat", 5000, 150),
("P0022", "Susu Sapi Rasa Strawberry", 5000, 70),
("P0023", "Es Tea", 3000, 100),
("P0024", "Es Jeruk", 5000, 120),
("P0025", "Es Buah", 10000, 100),
("P0026", "Soda Gembira", 9500, 130),
("P0027", "Es Lemon Tea", 7500, 34),
("P0028", "Jus Durian", 11500, 30),
("P0029", "Jus Apel", 10500, 13),
("P0030", "Jus Pisang", 9500, 30),
("P0031", "Jus Jeruk", 6500, 20),
("P0032", "Jus Melon", 8500, 65);

truncate products;

select * from products;

select id, name, price, quantity from products;

alter table products
add primary key (id);

desc products;

show create table products;

select id, name, price, quantity
from products
where quantity = 100;

select * from products where quantity > 30;

select id, name, price, quantity from products where quantity <= 30;

select id, name, price, quantity
from products
where price >= 25000;

select id, name, price, quantity
from products
where category = null;

alter table products
add column category  enum ("Makanan", "Minumnan", "Lainnya") after name;

select * from products;

update products
set category = "Makanan"
where id = "P0002";

select * from products;

update products
set category = "Minumnan"
where id = "P0021";

update products
set category = "Makanan",
description = "Mie Ayam + Ceker"
where id = "P0003";

update products
set price = price + 2500
where id = 'P0006';

select id as "Kode",
name as "Nama",
category as "Kategori",
description as Deskripsi,
price as "Harga",
quantity as "Stok"
from products;

select p.id as "Kode",
p.name as "Nama",
p.category as "Kategori",
p.description as Deskripsi,
p.price as "Harga",
quantity as "Stok"
from products as p;

delete
from products
where id = 'P0032';

select * from products;

select id, name, price, quantity from products
where quantity > 100 and price < 10000;

select id, name, price, quantity from products
where quantity < 20 or price > 40000;

select * from products
where (Category = "Makanan" or price >= 25000) and quantity <= 50;

select * from products
where name like '%Sapi%';

select * from products
where category is null;

select * from products
where description is not null;

select * from products
where price between 20000 and 50000;

select * from products
where price not between 15000 and 25000;

select * from products
where category in ("Makanan", "Minumnan");

select * from products
order by id desc, price asc;

select * from products
where price < 20000
order by price
limit 5;

select * from products
where price > 15000
order by price
limit 5, 4;

select distinct category from products;

select 10, 5 * 25 as hasil;

select id, cos(price), sin(price), Tan(price) from products;

select id, price DIV 1000 as "Price in K"
from products;

select id,
lower(name) as "Nama Lower",
Length(name) as "Panjang Nama",
upper(name) as "Nama Upper"
from products;

select id,
extract(year from created_at) as "Year",
extract(month from created_at) as "Month"
from products;

select id, year(created_at), month(created_at)
from products;

select id,
case category
when "Makanan" then "Enak"
else "Apa itu?"
end as "Category"
from products;

select id,
price,
if(price <= 15000, "Murah",
if(price <= 20000, "Mahal", "Mahal Banget")
) as "Mahal?"
from products;

select id, name, ifnull(description, "Kosong") from products;


select count(id) as "Total Product" from products;

select avg(price) as "Rata - Rata" from products;

select max(price) as "Harga Termahal" from products;

select min(price) as "Harga Termurah" from products;

