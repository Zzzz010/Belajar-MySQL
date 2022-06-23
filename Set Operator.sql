create table guestbooks2
(
id int not null auto_increment,
email varchar(200) not null,
title varchar (200) not null,
content text,
primary key (id)
) engine = InnoDB;

select * from guestbooks2;

select distinct email from customers
union
select distinct email from guestbooks2;

select distinct email from customers
union all
select distinct email from guestbooks2;

insert into guestbooks2(email, title, content)
values ("guest@gmail.com", "Hallo1", "Ini Hallo1"),
("guest2@gmail.com", "Hallo2", "Ini Hallo2"),
("guest3@gmail.com", "Hallo3", "Ini Hallo3"),
("guest1@gmail.com", "Hallo1", "Ini Hallo1"),
("radit_bagus@gmail.com", "Hallo4", "Ini Hallo5"),
("radit_bagus@gmail.com", "Hallo5", "Ini Hallo4");

select email, count(email) from
(select distinct email from customers
union all
select distinct email from guestbooks2) as emails
group by email;

select distinct email from customers
where email in
(select distinct email from guestbooks2);

select distinct customers.email from customers
inner join guestbooks2 on (guestbooks2.email = customers.email);

select distinct customers.email, guestbooks2.email from customers
left join guestbooks2 on (guestbooks2.email = customers.email)
where guestbooks2.email is null;