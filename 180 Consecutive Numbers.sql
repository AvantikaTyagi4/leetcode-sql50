SELECT DISTINCT a.num consecutivenums
FROM logs a JOIN logs b 
ON a.id = b.id-1 AND a.num = b.num
JOIN logs c
ON c.id = b.id+1 AND b.num = c.num;
