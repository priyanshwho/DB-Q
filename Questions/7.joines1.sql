-- Show how many patients have a birth_date with 2010 as the birth year.


select count(*) from patients where birth_date between '2010-01-01' AND '2010-12-31';

select count(*) from patients where strftime('%Y', birth_date) = '2010'; 

SELECT COUNT(*) FROM patients WHERE EXTRACT(YEAR FROM birth_date) = 2010;