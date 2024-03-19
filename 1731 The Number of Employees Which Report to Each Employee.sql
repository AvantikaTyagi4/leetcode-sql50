SELECT b.reports_to employee_id, a.name, 
count(b.employee_id) reports_count,
round(avg(b.age),0) average_age
FROM employees a join employees b
ON a.employee_id = b.reports_to
GROUP BY b.reports_to, a.name
HAVING count(*) > 0
ORDER BY b.reports_to;
