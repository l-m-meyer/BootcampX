SELECT  DISTINCT teachers.name as teacher,
        cohorts.name as cohort
  FROM assistance_requests
  JOIN teachers ON teachers.id = teacher_id
  JOIN students ON students.id = student_id
  JOIN cohorts ON cohorts.id = cohort_id
  WHERE cohorts.name = 'JUL02'
  ORDER BY teacher;

-- COMPASS ANSWER
-- SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
-- FROM teachers <-- this is where it differed
-- JOIN assistance_requests ON teacher_id = teachers.id
-- JOIN students ON student_id = students.id
-- JOIN cohorts ON cohort_id = cohorts.id
-- WHERE cohorts.name = 'JUL02'
-- ORDER BY teacher;