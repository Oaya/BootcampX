SELECT teachers.name AS teacher, 
       students.name AS students,     
       assignments.name AS assignment,
       (assistance_requests.completed_at - assistance_requests.started_at)
       AS duration
  FROM teachers 
  JOIN assistance_requests
  ON(teachers.id = assistance_requests.teacher_id)
  JOIN students
  ON(assistance_requests.student_id = students.id)
  JOIN assignments
  ON(assistance_requests.assignment_id = assignments.id)
ORDER BY duration;