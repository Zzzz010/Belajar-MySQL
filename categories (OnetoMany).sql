drop table categories;

create table categories
(
id varchar(10) not null,
name varchar(10) not null,
primary key (id)
) engine = innodb;

alter table products
drop column id_category;

alter table products
add column id_category varchar(10) after name;

desc products;

alter table products
add constraint fk_product_category
foreign key (id_category) references categories (id);

select * from products;

drop table categories;

alter table products
drop id_category;
alter table products
drop constraint fk_product_category;

truncate categories;

insert into categories (id, name)
values ("C0001", "Makanan"),
("C0002", "Minuman"),
("C0003", "Lainnya");

select * from categories;
desc categories;

select * from products;

insert into products (id, name, price, quantity)
values ("P0032", "Kerupuk", "3000", "200"),
("P0033", "Kerupuk Udang", "4500", "250");

update products
set id_category = "C0001"
where id in ("P0001", "P0002", "P0003", "P0004", "P0005", "P0006", "P0007", "P0008", "P0009", "P0010", "P0011", "P0012", "P0013", "P0014", "P0015", "P0016", "P0017", "P0018", "P0019", "P0020");

update products
set id_category = "C0002"
where id in ("P0021", "P0022", "P0023", "P0024", "P0025", "P0026", "P0027", "P0028", "P0029", "P0030", "P0031", "P0032");

update products
set id_category = "C0003"
where id in ("P0032", "P0033");

select p.id, p.name, c.name
from products as p
join categories as c on (c.id = p.id_category);