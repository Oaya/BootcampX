SELECT day ,count(day) as total_assignments
FROM assignments
 GROUP BY  day
 ORDER BY day;