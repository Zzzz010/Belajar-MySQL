create table wishlist
(
id int not null auto_increment,
id_product varchar(10) not null,
description text,
primary key (id),
constraint fk_wishlist_product
	foreign key (id_product) references products (id)
) engine = innoDB;

desc wishlist;
show create table wishlist;

alter table wishlist
drop constraint fk_wishlist_product;
alter table wishlist
add constraint fk_wishlist_product
	foreign key (id_product) references products (id);
    
insert into wishlist (id_product, description)
values ("P0001", "Makanan Rekomendasi Teman X");

insert into wishlist (id_product, description)
values ("P0002", "Makanan Rekomendasi Teman Y"),
("P0003", "Makanan Rekomendasi Teman Z"),
("P0004", "Makanan Rekomendasi Teman A");

insert into wishlist (id_product, description)
values ("P0032", "Jajanan Kesukaan Para Bocil");

select * from wishlist;

alter table wishlist
add constraint fk_wishlist_product
	foreign key (id_product) references products (id)
		on delete cascade on update cascade;

delete from products
where id = "P0032";

select * from wishlist
join products on (wishlist.id_product = products.id);

select p.id, p.name, w.description
from wishlist as w
join products as p on (w.id_product = p.id);

desc customers;
desc wishlist;
select * from customers;

alter table wishlist
add column id_customers int after id_product;
alter table wishlist
add constraint fk_wishlist_customers
foreign key (id_customers) references customers (id);

update wishlist
set id_customers = 1
where id = 1;

select c.email, p.id, p.name, w.description
from wishlist as w
join products as p on (w.id_product = p.id)
join customers as c on (w.id_customers = c.id);