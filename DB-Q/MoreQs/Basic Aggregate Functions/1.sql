-- 620. Not Boring Movies

-- Write your PostgreSQL query statement below
select * from Cinema 
where id%2=1 
and
description != 'boring' 
ORDER BY rating DESC;