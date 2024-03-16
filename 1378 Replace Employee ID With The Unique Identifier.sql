SELECT unique_id, name
FROM employees e  LEFT JOIN employeeUNI eu
ON eu.id = e.id; 
