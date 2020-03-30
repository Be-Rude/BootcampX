SELECT id, name, email, cohort_id
FROM students
WHERE github is NULL
ORDER by cohort_id;