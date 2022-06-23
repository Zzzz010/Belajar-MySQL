select avg(price) from products;

select * from products
where price > (select AVG(price) from products);

select max(cp.price) from (select price from categories inner join products
on (products.id_category = categories.id)) as cp;