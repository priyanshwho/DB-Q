select * from products;

select name, price,
case when (price>1000) then 'expensive'
	 when (price between 500 and 1000) then 'moderate'
	 else 'cheap'
end as price_tag from products;

select * from products;
-- upper table is snapshot of the table at that time, if we update the table then upper query will not reflect the changes in the table.


-- now
select * from products;

alter table products
add column price_tag text;
 update products 
 set price_tag=
 case
 	when (price>1000) then 'expensive'
	when (price between 500 and 1000) then 'moderate'

	else'cheap'
end;
-- now above query will reflect the changes in the table because we have added a new column price_tag and updated it with the case statement.

-- question 1
select * from products;

alter table products
add column instock text;
 update products 
 set instock=
 case
 	when is_available then 'in_stock'
	
	else 'out_of_stock'
end;

-- question 2
select name, stock_quantity,label from products;

alter table products
add column label text;
update products set label=
case
	when (stock_quantity>70) then 'high_stock'
	when (stock_quantity between 30 and 70) then 'medium stock'
	else 'low stock'
end;
