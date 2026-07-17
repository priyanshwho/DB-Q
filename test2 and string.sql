-- min price of products
select name,
    price
from products
where price = (
        select min(price)
        from products
    );


--  avg
select name,
    price
from products
where price = (
        select min(price)
        from products
    );


--  conditions
select name,
    stock_quantity
from products
where is_available = true
    and stock_quantity > 50
    and not price = 299 -- min price 
select name,
    price
from products
where price =(
        select max(price)
        from products
    )



-- max price each category
select category, max(price) from products group by category;


-- unique category inuppercase and sorted in desc order
select distinct upper(category) as category_upper
from products
order by category_upper desc

-- substring arms
select substring('brother in arms',12,4)

-- substring sku_code
select name, lower(substring(sku_code,1,2)) from products

-- select left('brother arms',7)
-- select right('brother arms',4)

select name, left(sku_code,2) from products;


-- concat and concat_ws
select concat(name,' ',category,' ' , sku_code) as products_with_caategory from products
-- ws=width simulator
select concat_ws(':',name,category, sku_code) as products_with_caategory from products


-- trim , replace
select name, replace(sku_code,left(sku_code,2),'GG') from products