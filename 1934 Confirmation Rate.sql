SELECT s.user_id,
round( count(CASE WHEN c.action = 'confirmed' THEN 1 END)/count(*) , 2) confirmation_rate
FROM signups s LEFT JOIN confirmations c
ON s.user_id = c.user_id
GROUP BY s.user_id;
