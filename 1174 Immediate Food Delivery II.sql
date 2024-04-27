SELECT round((count(CASE when min(order_date) = min(customer_pref_delivery_date) then 1 end)/count(*)) *100,2)  immediate_percentage
FROM delivery
GROUP BY customer_id;
