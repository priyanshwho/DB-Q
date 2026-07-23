-- Show the city and the total number of patients in the city.
-- Order from most to least patients and then by city name ascending.

select  city , count(patient_id) 
as patient_count 
from patients 
group by city 
order by count(patient_id) desc,
city asc;