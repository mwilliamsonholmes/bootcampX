-- Get the total number of assignments for each day of bootcamp.
--Select the day and the total assignments.
--Order the results by day.
--This query only requires the assignments table.

--my first attempt:
-- SELECT day, count(assignments.id) as total_assignments
-- FROM assignments
-- GROUP BY day;


final answer:
SELECT day, count(*) as total_assignments 
FROM assignments
GROUP BY day
ORDER BY day;
