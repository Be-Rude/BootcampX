SELECT COUNT(assistance_requests.id) AS total_assistances, name
FROM students
JOIN assistance_requests ON students.id = assistance_requests.student_id
WHERE name = 'Elliot Dickinson'
GROUP BY name;