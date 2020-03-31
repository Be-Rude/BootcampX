SELECT cohorts.name AS cohort, COUNT(assignment_submissions.*) as total_submissions
FROM cohorts
JOIN students on cohorts.id = cohort_id
JOIN assignment_submissions on students.id = student_id
GROUP BY cohorts.name
ORDER BY COUNT(assignment_submissions.*) DESC;