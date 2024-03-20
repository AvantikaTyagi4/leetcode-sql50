SELECT to_char(sell_date,'YYYY-MM-DD') sell_date, count(DISTINCT product) num_sold,
listagg( product ,',') WITHIN GROUP (ORDER BY product) products
FROM (SELECT DISTINCT sell_date, product from activities)
GROUP BY sell_date
ORDER BY sell_date;
