-- 1633. Percentage of Users Attended a Contest

-- Write your PostgreSQL query statement below
select r.contest_id , coalesce(round((COUNT(r.user_id)::numeric /
(SELECT COUNT(*) FROM Users)
* 100),2),0) as percentage 
from Users as u 
join Register as r 
on u.user_id=r.user_id 
group by contest_id 
ORDER BY percentage DESC, contest_id;