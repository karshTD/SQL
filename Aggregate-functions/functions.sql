SELECT 
    student_id,

    COUNT(subject) AS subjects_attempted,

    SUM(marks) AS total_marks,

    AVG(marks) AS average_marks,

    MIN(marks) AS weakest_subject_score,

    MAX(marks) AS best_subject_score,

    GROUP_CONCAT(subject, ':', marks SEPARATOR ' | ') 
        AS performance_breakdown

FROM StudentScores
GROUP BY student_id;
