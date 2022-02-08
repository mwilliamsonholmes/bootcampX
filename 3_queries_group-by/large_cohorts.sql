-- Get all cohorts with 18 or more students.
-- Select the cohort name and the total students.
-- Order by total students from smallest to greatest.
-- Expected Result:

--  cohort_name | student_count 
-----------+---------------
--  FEB12       |            18
--  APR09       |            19
--  JUN04       |            19
--  NOV19       |            22
--  SEP24       |            22
-- (5 rows)

SELECT cohorts.name as cohort_name, count(students.*) as student_count
FROM cohorts
JOIN students ON students.cohort_id =  cohorts.id
GROUP BY cohorts.name
HAVING count(students.*) >= 18
ORDER BY count(students.*);