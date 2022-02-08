-- Calculate the average total duration of assistance requests for each cohort.
-- Use the previous query as a sub query to determine the duration per cohort.
-- Return a single row average_total_duration
-- Expected Result:

--  average_total_duration 
------------------------
--  555:22:25.909091
-- (1 row)


SELECT avg(total_duration)
FROM (
SELECT cohorts.name as cohort, sum(assistance_requests.completed_at - assistance_requests.started_at) as total_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohort
ORDER BY total_duration)
as average_total_duration;
