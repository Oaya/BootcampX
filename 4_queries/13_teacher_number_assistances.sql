SELECT DISTINCT teachers.name AS teacher,   
       cohorts.name AS cohort, 
       count(assistance_requests)
       FROM assistance_requests
       JOIN teachers
       ON assistance_requests.teacher_id = teachers.id
       JOIN students
       ON  students.id = assistance_requests.student_id
       JOIN cohorts
       ON cohorts.id = students.cohort_id
       
       WHERE cohorts.name = 'JUL02'
       GROUP BY teachers.name,cohorts.name
       ORDER BY teacher;