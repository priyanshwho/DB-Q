create view low_stock as
select name, category, stock_quantity
from products
where stock_quantity<30;



select * from low_stock;

-- -------------------------------------------------


select * from products


create procedure  add_products(
p_name varchar(30),
p_sku char(8),
p_price numeric,
p_qty int,
p_category text
)

language plpgsql
as $$
begin
	insert into products(
name, sku_code,price, stock_quantity, category)
values
(p_name,p_sku,p_price,p_qty,p.category);


raise notice 'product added successfully..!';
end;
$$;

call add_products('Smart Watch','SW166011',2999,20,'electronics');