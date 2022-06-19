create table orders
(
id int not null auto_increment,
total int not null,
order_date datetime not null default current_timestamp,
primary key (id)
)engine = innodb;

desc orders;

create table orders_detail
(
id_product varchar(10) not null,
id_order int not null,
price int not null,
quantity int not null,
primary key (id_product, id_order)
) engine = innodb;

desc orders_detail;

alter table orders_detail
add constraint fk_order_detail_product
foreign key (id_product) references products (id);

alter table orders_detail
add constraint fk_orders_detail_order
foreign key (id_order) references orders (id);

show create table orders_detail;

insert into orders(total) values (75000);

select * from orders;
select * from products;

insert into orders_detail (id_product, id_order, price, quantity)
values ("P0001", 1, 25000, 1),
("P0002", 1, 40000, 2);

insert into orders_detail (id_product, id_order, price, quantity)
values ("P0003", 2, 25000, 1),
("P0004", 2, 40000, 3);

insert into orders_detail (id_product, id_order, price, quantity)
values ("P0001", 3, 25000, 1),
("P0003", 3, 40000, 5);

select * from orders_detail;

select *
from orders as o
	join orders_detail as od on (od.id_order = o.id)
    join products as p on (p.id = od.id_product);
    
select o.id, p.id, p.name, od.quantity, od.price
from orders as o
	join orders_detail as od on (od.id_order = o.id)
    join products as p on (p.id = od.id_product);