SELECT name, id, cohort_id
FROM students
WHERE end_data IS NULL
ORDER BY cohort_id;