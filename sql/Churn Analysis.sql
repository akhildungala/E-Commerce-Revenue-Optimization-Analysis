---Get Last Purchase Date

SELECT customer_id,
       MAX(order_purchase_timestamp) AS last_purchase
FROM orders
GROUP BY customer_id;


---Export this to csv