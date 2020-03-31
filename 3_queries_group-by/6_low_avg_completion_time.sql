SELECT students.name AS student, AVG(assignment_submissions.duration) AS average_assignment_duration, AVG(assignments.duration) AS average_estimated_duration
FROM students
JOIN assignment_submissions on students.id = assignment_submissions.student_id
JOIN assignments on assignment_id = assignments.id
WHERE end_date IS NULL
GROUP BY students.name
HAVING AVG(assignments.duration) > AVG(assignment_submissions.duration)
ORDER BY average_assignment_duration;