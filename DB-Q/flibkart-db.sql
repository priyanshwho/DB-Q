create table products(
  product_id serial primary key,
  name varchar(50) not null ,
  sku_code char(8) unique not null  ,
  price numeric(10,2) default 0 check(price>=0),
  stock_quantity int default 0 check(stock_quantity>=0),
  is_available boolean default true,
  category text not null,
  added_on date default current_date,
  last_update timestamp default now()
);



insert into products(name, sku_code, price, stock_quantity, is_available, category)
VALUES
('Wireless Mouse','WM1001',899,50,true,'electronics'),
('Bluetooth Speaker','BS1002',2499,30,true,'electronics'),
('Laptop Stand','LS1003',1299,25,true,'accessories'),
('USB-C Hub','UH1004',1799,20,true,'accessories'),
('Notebook','NB1005',199,100,true,'stationery'),
('Pen Set','PS1006',349,80,true,'stationery'),
('Coffee Mug with Lid','CM1007',499,40,true,'home and kitchen'),
('LED Desk Lamp','DL1008',1499,15,true,'home and kitchen'),
('Yoga Mat','YM1009',999,35,true,'fitness'),
('Water Bottle','WB1010',599,60,true,'fitness');
select * from products;



select name, price from products;

select category from products group by category;


select category , count(*) from products 
Group by category
having count(*)>1;


select * from products order by price desc;



select * from products;

select * from products where category !='electronics';



select * from products;

select * from products where category !='electronics';



select * from products;

select * from products where price>500 and category ='electronics';

select * from products;

select * from products where price>500 and category ='electronics' and stock_quantity>20;



select * from products;
-- select * from products where price<1000 and price>400;
select * from products where price between 400 and 1000;

-- START WITH W
select * from products where sku_code like 'W%'; 

-- SHOULD HAVE 10 IN BETWEEN
select * from products where sku_code like '%10%';

-- not 
select * from products where not category ='electronics'


select round(avg(price),2) from products where category ='electronics';