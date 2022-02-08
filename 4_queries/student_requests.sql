-- Get the total number of assistance_requests for a student.
-- Select the student's name and the total assistance requests.
-- Since this query needs to work with any specific student name, use 'Elliot Dickinson' for the student's name here.
-- Expected Result:

--  total_assistances |       name       
-------------------+------------------
              --  138 | Elliot Dickinson
-- (1 row)

SELECT count(assistance_requests.*) as total_assistances, students.name as name
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
WHERE name = 'Elliot Dickinson'
GROUP BY students.name;