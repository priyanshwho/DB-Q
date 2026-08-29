-- 177. Nth Highest Salary

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
     SET N = N -1;
  RETURN (
      # Write your MySQL query statement below.
    
            -- select salary from (
            --    select salary, dense_rank() over (order by salary desc) as rnk
            --     from Employee
            -- ) t
            -- where rnk=N
            -- limit 1


     SELECT DISTINCT  SALARY 
     FROM EMPLOYEE
     ORDER BY SALARY DESC 
     LIMIT 1 OFFSET N

        
  );
END