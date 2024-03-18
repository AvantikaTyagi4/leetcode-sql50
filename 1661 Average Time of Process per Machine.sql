select a.machine_id, round((b.timestamp - a.timestamp)/(a.process_id),3) processing_time
FROM
(SELECT machine_id, sum(timestamp) timestamp, count(process_id) process_id
FROM activity 
WHERE activity_type ='start'
GROUP BY machine_id) a
JOIN
(SELECT machine_id,sum(timestamp) timestamp, count(process_id) process_id
FROM activity 
WHERE activity_type = 'end'
GROUP BY machine_id) b
ON a.machine_id = b.machine_id
ORDER BY machine_id;

----------- Optimized Query ----------------------------------
SELECT a.machine_id, round(avg(b.timestamp - a.timestamp),3) processing_time
FROM activity a join activity b
ON a.machine_id = b.machine_id
WHERE a.activity_type = 'start'
AND b.activity_type = 'end'
GROUP BY a.machine_id;
