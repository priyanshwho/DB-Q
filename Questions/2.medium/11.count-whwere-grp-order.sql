-- Show all allergies ordered by popularity. Remove NULL values from query.

select  allergies, COUNT(*) AS total_diagnosis
 from patients WHERE allergies IS NOT NULL
 group by allergies order by count(*) desc;