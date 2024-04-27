WITH mostRaterUser AS
(SELECT u.name results, count(*)
FROM users u JOIN movierating m
ON u.user_id = m.user_id
GROUP BY u.name 
ORDER BY 2 DESC, 1),
mostRatedMovie AS (SELECT m.title results, avg(mu.rating)
FROM movies m JOIN movierating mu
ON m.movie_id = mu.movie_id
WHERE to_char(created_at, 'yyyy-mm') = '2020-02'
GROUP BY m.title
ORDER BY 2 DESC, 1)
SELECT results FROM mostRaterUser 
WHERE rownum = 1
UNION ALL
SELECT results FROM mostRatedMovie
WHERE rownum  = 1;
