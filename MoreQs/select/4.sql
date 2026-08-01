-- 1148. Article Views I

-- Write your PostgreSQL query statement below
select distinct author_id as id from Views where author_id=viewer_id order by id;