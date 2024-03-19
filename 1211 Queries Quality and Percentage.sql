SELECT query_name, round(avg(rating/position),2) quality, 
ROUND((COUNT(CASE WHEN rating < 3 THEN 1 END)/COUNT(*) *100),2) poor_query_percentage
FROM queries
WHERE query_name IS NOT NULL
GROUP BY query_name;
