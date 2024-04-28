SELECT to_char(activity_date,'yyyy-mm-dd') day, count(DISTINCT user_id) active_users
FROM activity
WHERE 
to_char(activity_Date, 'yyyy-mm-dd') BETWEEN '2019-06-28' AND '2019-07-27'
GROUP BY activity_date;
