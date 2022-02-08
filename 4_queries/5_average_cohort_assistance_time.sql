SELECT cohorts.name AS name, 
      avg(completed_at - started_at) AS average_assistance_time
      FROM assistance_requests
      JOIN students
      ON(assistance_requests.student_id = students.id)
      JOIN cohorts
      ON(cohorts.id = students.cohort_id )

    GROUP BY cohorts.name
    ORDER BY average_assistance_time;