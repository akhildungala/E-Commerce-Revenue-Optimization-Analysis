---Create Database: 

CREATE DATABASE ecommerce_analytics;


---Create Tables

CREATE TABLE customers (
    customer_id VARCHAR PRIMARY KEY,
    customer_city VARCHAR,
    customer_state VARCHAR
);

CREATE TABLE orders (
    order_id VARCHAR PRIMARY KEY,
    customer_id VARCHAR REFERENCES customers(customer_id),
    order_purchase_timestamp TIMESTAMP,
    order_status VARCHAR
);

CREATE TABLE payments (
    payment_id SERIAL PRIMARY KEY,
    order_id VARCHAR REFERENCES orders(order_id),
    payment_value NUMERIC
);

