Start transaction ;

insert into guestbooks2(email, title, content)
values ("contohemail1@gmail.com", "Contoh1", "Ini Contoh1"),
("contohemail2@gmail.com", "Contoh2", "Ini Contoh2"),
("contohemail3@gmail.com", "Contoh3", "Ini Contoh3"),
("contohemail4@gmail.com", "Contoh4", "Ini Contoh4"),
("contohemail1@gmail.com", "Contoh1", "Ini Contoh5");

select * from guestbooks2;

commit ;

start transaction ;

delete from products;

select * from guestbooks2;

rollback ;

