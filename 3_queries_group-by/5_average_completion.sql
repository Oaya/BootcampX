SELECT students.name AS student, avg(assignment_submissions.duration) AS average_assignment_duration
FROM students
JOIN assignment_submissions On students.id = student_id
WHERE students.end_date IS NOT NULL
GROUP BY students.name
ORDER BY average_assignment_duration DESC; 