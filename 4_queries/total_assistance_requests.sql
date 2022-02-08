-- Get the total number of assistance_requests for a teacher.
-- Select the teacher's name and the total assistance requests.
-- Since this query needs to work with any specific teacher name, use 'Waylon Boehm' for the teacher's name here.
--  total_assistances |     name     
-------------------+--------------
              -- 4227 | Waylon Boehm
-- (1 row)

SELECT count(assistance_requests.teacher_id) as total_assistances, teachers.name as name
FROM assistance_requests
JOIN teachers ON assistance_requests.teacher_id = teachers.id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;
