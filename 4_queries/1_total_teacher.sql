SELECT COUNT(*) AS total_assistance, teachers.name AS name 
FROM teachers JOIN assistance_requests
ON(teachers.id = assistance_requests.teacher_id)
WHERE name = 'Waylon Boehm'
GROUP BY name;
