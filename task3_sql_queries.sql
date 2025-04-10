
-- 1. Basic SELECT with WHERE and ORDER BY
SELECT * FROM products WHERE price > 50 ORDER BY price DESC;

-- 2. GROUP BY with aggregation
SELECT product_id, SUM(quantity) AS total_quantity
FROM order_items
GROUP BY product_id;

-- 3. INNER JOIN
SELECT c.name AS customer_name, o.order_date
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id;

-- 4. LEFT JOIN
SELECT c.name, o.order_date
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

-- 5. RIGHT JOIN equivalent using LEFT JOIN (SQLite doesn’t support RIGHT JOIN directly)
-- This is a workaround for RIGHT JOIN by switching table order
SELECT o.order_date, c.name
FROM orders o
LEFT JOIN customers c ON o.customer_id = c.customer_id;

-- 6. Subquery: Customers who ordered products over $500
SELECT name FROM customers
WHERE customer_id IN (
    SELECT o.customer_id
    FROM orders o
    JOIN order_items oi ON o.order_id = oi.order_id
    JOIN products p ON oi.product_id = p.product_id
    WHERE p.price > 500
);

-- 7. Aggregate function: Average spend per customer
SELECT c.name, AVG(p.price * oi.quantity) AS avg_spend
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY c.customer_id;

-- 8. View creation
CREATE VIEW customer_spending AS
SELECT c.customer_id, c.name, SUM(p.price * oi.quantity) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY c.customer_id;

-- 9. Optimization hint: Add index
CREATE INDEX idx_order_customer ON orders(customer_id);
