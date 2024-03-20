SELECT p.product_name, sum(o.unit) unit
FROM products p join orders o
ON p.product_id = o.product_id
WHERE to_char(o.order_date,'mm-yyyy') = '02-2020'
GROUP BY p.product_name
HAVING sum(o.unit) >= 100;
