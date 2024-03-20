SELECT max(salary) secondhighestsalary
FROM employee 
WHERE salary NOT IN (SELECT max(salary) FROM employee);
