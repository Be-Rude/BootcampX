SELECT sum(assignment_submissions.duration) as total_duration
from students join assignment_submissions on students.id = assignment_submissions.student_id
where students.name = 'Ibrahim Schimmel'
Group by name;