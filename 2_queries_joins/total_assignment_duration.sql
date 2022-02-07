-- //Get the total amount of time that all students from a specific cohort have spent on all assignments.
//This should work for any cohort but use FEB12 for now.
-- //only 1 column in answer should be 373501 for this cohort 
SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';