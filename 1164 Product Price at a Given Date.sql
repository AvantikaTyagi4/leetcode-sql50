WITH CTE AS (SELECT product_id, new_price price
FROM products
WHERE (product_id, change_date) IN (SELECT product_id, max(change_date)
FROM products 
WHERE change_date <= '2019-08-16'
GROUP BY product_id))
SELECT product_id, price 
FROM cte
UNION
SELECT product_id, 10 price
FROM products
WHERE product_id NOT IN (SELECT product_id FROM cte);
