SELECT SUM(duration) AS total_duration
FROM assignment_submissions
JOIN students ON  student_id = students.id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';