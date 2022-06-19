create table wallet
(
id int not null auto_increment,
id_customers int not null,
balance int not null default 0,
primary key (id),
unique key fk_id_customers_unique (id_customers),
constraint fk_wallet_customers
foreign key (id_customers) references customers (id)
) engine = innodb;

desc wallet;
show create table wallet;
select * from customers;
select * from wallet;

insert into wallet (id_customers)
values (1), (2), (4);

select c.email, w.balance
from wallet as w
join customers as c on (w.id_customers = c.id);