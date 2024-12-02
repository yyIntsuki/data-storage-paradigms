SELECT instructor_id AS "Instructor Id", first_name AS "First Name", last_name AS "Last Name", total_lessons AS "No of Lessons" FROM MonthlyInstructorWorkload
WHERE lesson_year = EXTRACT(YEAR FROM CURRENT_DATE)
  AND lesson_month = EXTRACT(MONTH FROM CURRENT_DATE)
  AND total_lessons > 1
ORDER BY total_lessons DESC;