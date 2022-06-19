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