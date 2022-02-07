SELECT name, email, id, cohort_id
FROM students
WHERE NOT email = '%gmail%'
AND phone IS NULL;