-- 1075. Project Employees I

-- -- Write your PostgreSQL query statement below
-- -- group by project
-- avg exp of grop by project

select p.project_id , 
coalesce(
    round(
        avg(e.experience_years)::numeric
        ,2
        ),
        0
) as average_years
from Project p left join Employee e on p.employee_id=e.employee_id
group by project_id;