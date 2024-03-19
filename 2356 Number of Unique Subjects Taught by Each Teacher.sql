SELECT teacher_id, count(DISTINCT subject_id) cnt
FROM teacher
GROUP BY teacher_id;
