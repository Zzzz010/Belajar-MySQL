create table customers
(
id int not null auto_increment,
email varchar(100) not null,
first_name varchar(30) not null,
last_name varchar (30),
primary key (id),
unique key email_unique (email)
) engine = InnoDB;

desc customers;
show create table customers;

alter table customers
drop constraint email_unique;

alter table customers
add constraint email_unique unique (email);

insert into customers (email, first_name, last_name)
values ("radit_bagus@gmail.com", "Radit", "Bagus"),
("zero_matarmaja@gmail.com", "Zero", "Chan");

select * from customers;

insert into customers (email, first_name, last_name)
values ("raung_bromo@gmail.com", "Raung", "");

create table sellers
(
id int not null auto_increment,
firstname varchar(30) not null,
lastname varchar(30),
email varchar(100),
primary key (id),
unique key email_unique (email),
index firstname_lastname_index (firstname, lastname)
) engine = InnoDB;

desc sellers;
show create table sellers;
select * from sellers;
drop table sellers;

select * from sellers where firstname = "X";
select * from sellers where lastname = "X";
select * from sellers where firstname = "X" and lastname = "X";

alter table sellers
add index name_index (name);
alter table sellers
drop index name_index;
