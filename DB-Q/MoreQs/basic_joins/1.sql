-- 1378. Replace Employee ID With The Unique Identifier

-- Write your PostgreSQL query statement below
select eu.unique_id , e.name from Employees as e left join EmployeeUNI as eu on e.id=eu.id;