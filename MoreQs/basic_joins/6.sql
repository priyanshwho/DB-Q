-- 1280. Students and Examinations

-- Write your PostgreSQL query statement below
select  s.student_id,s.student_name, ss.subject_name, 
COUNT(e.student_id) AS attended_exams
from Students as s 
cross join Subjects as ss 
LEFT JOIN Examinations e
ON s.student_id = e.student_id
AND ss.subject_name = e.subject_name
GROUP BY
    s.student_id,
    s.student_name,
    ss.subject_name
order by student_id, subject_name
