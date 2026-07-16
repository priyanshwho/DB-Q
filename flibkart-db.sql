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


insert into products (
  name, sku_code, price, stock_quantity, is_available,category
  )
values('keyboard','8765432a',300,25,true,'electronics'),
('board','8765433a',320,12,true,'electronics'),
('key','8765422a',302,51,false,'electronics'),
('mouse','8761432a',220,2,true,'electronics');


select * from products;