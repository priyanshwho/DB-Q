-- Show all columns for patient_id 542's most recent admission_date.

select * from admissions where patient_id=542
ORDER BY admission_date DESC
LIMIT 1; 