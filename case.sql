select * from products;

select name, price,
case when (price>1000) then 'expensive'
	 when (price between 500 and 1000) then 'moderate'
	 else 'cheap'
end as price_tag from products;

select * from products;