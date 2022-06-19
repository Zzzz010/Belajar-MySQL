use belajar_mysql;

select category, count(id) as "Total Product"
from products
group by category;

select category, max(price) as "Produk Termahal"
from products
group by category;

select avg(price) as "Rata - Rata Harga", category from products
group by category;

select sum(quantity) as "Total Produk", category from products
group by category;

select category, count(id) as total
from products group by category having total >= 1;

alter table products
add constraint price_check check ( price >= 1000 );

select * from products;
desc products;

alter table products
drop constraint price_check;

insert into products(id, name, price, quantity, category)
values ("P0032", "Gulali", 2000, 100, "Lainnya");

create table products
(
id varchar(10) not null,
name varchar(30) not null,
description text,
price int unsigned not null,
quantity int unsigned not null default 0,
created_at timestamp not null default current_timestamp,
primary key (id),
fulltext product_search (name, description)
) engine = InnoDB;

alter table products
add fulltext product_search (name, description);
alter table products
drop index product_search;

show create table products;

select * from products
where match(name, description)
against ("Mie" in natural language mode);

select * from products
where match(name, description)
against ("+Mie -sapi" in boolean mode);

select * from products
where match(name, description)
against ("kambing" with query expansion);

