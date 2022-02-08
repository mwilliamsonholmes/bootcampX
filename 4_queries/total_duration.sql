-- Get each day with the total number of assignments and the total duration of the assignments.

-- Select the day, number of assignments, and the total duration of assignments.
-- Order the results by the day.
-- Expected Result:

--  day | number_of_assignments | duration 
-----+-----------------------+----------
  --  1 |                    11 |      590
  --  2 |                     9 |      585
  --  3 |                     9 |      425
  --  4 |                     9 |      380
  --  5 |                     7 |      405
...
-- (51 rows)

SELECT assignments.day as day, count(assignments.day) as number_of_assignments, sum(assignments.duration) as duration
FROM assignments
GROUP BY day
ORDER BY day;