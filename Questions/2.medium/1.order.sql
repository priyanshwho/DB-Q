-- Show unique birth years from patients and order them by ascending.

SELECT DISTINCT year(birth_date)as birth_year
FROM patients
ORDER BY birth_year;