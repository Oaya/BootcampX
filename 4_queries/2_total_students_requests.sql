
SELECT COUNT(assistance_requests.*) AS total_assistance, students.name AS name 
FROM students JOIN assistance_requests
ON(students.id = assistance_requests.student_id)
WHERE name = 'Elliot Dickinson'
GROUP BY name;
