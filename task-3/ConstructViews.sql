CREATE VIEW MonthlyInstructorWorkload AS
SELECT 
    i.instructor_id instructor_id,
    p.first_name AS first_name,
    p.last_name AS last_name,
    COUNT(l.lesson_id) AS total_lessons,
    EXTRACT(YEAR FROM l.start_time) AS lesson_year,
    EXTRACT(MONTH FROM l.start_time) AS lesson_month
FROM lesson l
JOIN instructor i ON l.instructor_id = i.instructor_id
JOIN person p ON i.instructor_id = p.person_id
GROUP BY i.instructor_id, p.first_name, p.last_name, EXTRACT(YEAR FROM l.start_time), EXTRACT(MONTH FROM l.start_time);




CREATE VIEW SiblingCount AS
SELECT 
    counts AS sibling_amount,
    COUNT(counts) AS students_amount
FROM ( 
    SELECT s.student_id, COUNT(combined.student_id) AS counts
    FROM student s
    LEFT JOIN (
        SELECT student_id_2 AS student_id FROM siblings
        UNION ALL
        SELECT student_id_1 AS student_id FROM siblings
    ) AS combined ON s.student_id = combined.student_id
    GROUP BY s.student_id
) AS sibling_counts
GROUP BY sibling_amount
ORDER BY sibling_amount;





CREATE VIEW NextWeekEnsembles AS
SELECT 
    l.start_time AS start_time,
    e.genre AS genre,
    CASE
        WHEN lt.max_allowed - COUNT(p.student_id) = 0 THEN 'No Seats'
        WHEN lt.max_allowed - COUNT(p.student_id) BETWEEN 1 AND 2 THEN '1-2 Seats'
        ELSE 'Many Seats'
    END AS seat_amount
FROM lesson l
JOIN ensemble e ON l.lesson_id = e.lesson_id
JOIN lesson_type_info lt ON l.lesson_type = lt.lesson_type
LEFT JOIN participation p ON l.lesson_id = p.lesson_id
WHERE l.start_time >= CURRENT_DATE
      AND l.start_time < CURRENT_DATE + INTERVAL '7 days'
GROUP BY l.start_time, e.genre, lt.max_allowed
ORDER BY start_time, genre;




CREATE VIEW YearlyLessonSummary AS
SELECT 
    EXTRACT(YEAR FROM start_time) AS lesson_year,
    EXTRACT(MONTH FROM start_time) AS lesson_month,
    COUNT(CASE WHEN lesson_type = 'Individual Lesson' THEN 1 END) AS individual_lesson,
    COUNT(CASE WHEN lesson_type = 'Group Lesson' THEN 1 END) AS group_lesson,
    COUNT(CASE WHEN lesson_type = 'Ensemble' THEN 1 END) AS ensemble,
    COUNT(*) AS total_lessons
FROM lesson
GROUP BY lesson_year, lesson_month
ORDER BY lesson_year, lesson_month;

