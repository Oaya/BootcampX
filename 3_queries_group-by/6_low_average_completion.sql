SELECT students.name AS student, avg(assignment_submissions.duration) AS average_assignment_duration, avg( assignments.duration) AS average_estimated_duration
FROM students
JOIN assignment_submissions ON(students.id = student_id)
JOIN assignments ON (assignments.id = assignment_id )
WHERE students.end_date IS NULL
GROUP BY student
HAVING  avg(assignment_submissions.duration) <  avg( assignments.duration)
ORDER BY average_assignment_duration