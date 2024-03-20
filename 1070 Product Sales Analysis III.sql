SELECT s.product_id, s.year first_year, s.quantity, s.price
FROM sales s
WHERE (s.product_id, s.year) IN (SELECT product_id, min(year) FROM sales GROUP BY product_id);
