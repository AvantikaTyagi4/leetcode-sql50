SELECT r.contest_id, 
round(count(r.user_id)/(SELECT count(DISTINCT user_id) from users) *100 ,2) percentage
FROM register r
GROUP BY contest_id
ORDER BY percentage DESC, contest_id;
