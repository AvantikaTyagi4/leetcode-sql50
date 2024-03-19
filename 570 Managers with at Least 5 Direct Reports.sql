---- Using CTE --------------------
WITH cte as(
    SELECT managerId
    FROM employee
    GROUP BY managerId
    HAVING count(*) > = 5
)
SELECT name 
FROM employee e JOIN cte c
ON e.id = c.managerid;

--------- Optimized Query ---------------------
SELECT a.name
FROM employee a JOIN employee b
ON a.id = b.managerid
GROUP BY b.managerid, a.name
HAVING count(*) > = 5;
