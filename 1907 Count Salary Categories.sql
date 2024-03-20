SELECT 'Low Salary'category, count(*) accounts_count
FROM accounts
WHERE income < 20000
UNION
SELECT 'Average Salary', count(*) accounts_count
FROM accounts
WHERE income BETWEEN 20000 AND 50000
UNION
SELECT 'High Salary', count(*) accounts_count
FROM accounts
WHERE income > 50000;
