-- Show patient_id, attending_doctor_id, and diagnosis for admissions that match one of the two criteria:
-- 1. patient_id is an odd number and attending_doctor_id is either 1, 5, or 19.
-- 2. attending_doctor_id contains a 2 and the length of patient_id is 3 characters.

select patient_id,attending_doctor_id,diagnosis from admissions
WHERE
    (
        patient_id % 2 = 1
        AND attending_doctor_id IN (1, 5, 19)
    )
OR
    (
        CAST(attending_doctor_id AS TEXT) LIKE '%2%'
        AND LENGTH(CAST(patient_id AS TEXT)) = 3
    );