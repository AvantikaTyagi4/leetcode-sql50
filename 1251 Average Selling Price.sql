SELECT p.product_id, round(nvl(sum(p.price * u.units)/sum(u.units),0),2) average_price
FROM prices p LEFT JOIN unitsSold u
ON p.product_id = u.product_id
AND u.purchase_date BETWEEN p.start_date AND p.end_Date
GROUP BY p.product_id;
