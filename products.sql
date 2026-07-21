create table products(
	product_id int primary key,
	product_name varchar(100),
	category text,
	price numeric(10,2),
	stock_quantity int,
	is_available boolean,
	add_on date 
	
);


create table orders(
order_id int primary key,
product_id int,
quantity int,
order_date date,
customer_name varchar(50),
payment_method varchar(50),
constraint fk_product
	foreign key (product_id)
	references products(product_id)
	on delete cascade

);



select * from orders;
select * from products;

select o.order_id ,p.product_name,p.category ,p.price
from
products p  
join
orders o 
on 
o.product_id=p.product_id 
order by price desc;

select p.product_name, count(o.order_id) as total_orders
from
products p  
left join
orders o 
on 
o.product_id=p.product_id 
group by product_name;



select p.product_name,p.price,o.quantity, sum(o.quantity*p.price) as Revenue
from
products p  
right join
orders o 
on 
o.product_id=p.product_id 
group by p.product_name,o.quantity,p.price
having sum(o.quantity*p.price) > 2000
order by p.price desc;



select distinct o.customer_name, p.product_name,p.category 
from
products p  
 join
orders o 
on 
o.product_id=p.product_id 
where category = 'Fitness'