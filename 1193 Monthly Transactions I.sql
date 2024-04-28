SELECT to_char(trans_date, 'yyyy-mm') month,
country, count(id) trans_count,
count( (case when state = 'approved' then 1 END)) approved_count,
sum(amount) trans_total_amount,
sum(case when state = 'approved' then amount ELSE 0 END) approved_total_amount
FROM transactions
GROUP BY to_char(trans_date, 'yyyy-mm'), country
order by 1;
