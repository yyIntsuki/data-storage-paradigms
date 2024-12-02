SELECT lesson_month AS "Month", total_lessons AS "Total", individual_lesson AS "Individual Lesson", group_lesson AS "Group Lesson",ensemble AS "Ensemble" FROM YearlyLessonSummary
WHERE lesson_year = EXTRACT(YEAR FROM CURRENT_DATE);
