---1. Total Revenue

SELECT ROUND(SUM(payment_value),2) AS total_revenue
FROM payments;

---2. Total Orders

SELECT COUNT(*) AS total_orders
FROM orders;

---3. Monthly Revenue Trend

SELECT DATE_TRUNC('month', o.order_purchase_timestamp) AS month,
       ROUND(SUM(p.payment_value),2) AS revenue
FROM orders o
JOIN payments p ON o.order_id = p.order_id
GROUP BY month
ORDER BY month;

---4. Average Order Value (AOV)

SELECT 
ROUND(SUM(payment_value)/COUNT(DISTINCT order_id),2) AS avg_order_value
FROM payments;

