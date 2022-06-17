use belajar_mysql;

create table admin
(
id int not null auto_increment,
first_name varchar(30),
last_name varchar(30),
primary key (id)
) engine = InnoDB;

desc admin;

insert into admin(first_name, last_name) values ("Raung", "Kawijayan");
insert into admin(first_name, last_name) values 
("Raditya", "Bagus"),
("Tony", "Syarif");

select * from admin;

select last_insert_id();

select * from admin
order by id desc;

delete from admin where id = 3;

insert into admin(first_name, last_name) values ("Rossa", "Yasmine");