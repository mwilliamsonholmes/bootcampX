//
Get the total amount of time that a student has spent on all assignments.
-- //try using 'Ibrahim Schimmel'
-- //expected result is "total_duration" = 6888

-- SELECT SUM(assignments.duration) as total_duration
-- FROM assignment_submissions JOIN assignments ON assignment_id = id
-- WHERE student_id = 106;

SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';