-- 1934. Confirmation Rate

-- Write your PostgreSQL query statement below
select s.user_id, ROUND(
    COALESCE(
        AVG(
            CASE
                WHEN c.action = 'confirmed' THEN 1.0
                ELSE 0.0
            END
        ),
        0
    ),
    2
) as confirmation_rate
from Signups as s left join Confirmations as c on s.user_id=c.user_id
group by s.user_id;