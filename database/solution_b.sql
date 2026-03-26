-- Câu 1
SELECT u.user_id, u.user_name, o.order_id
FROM users u
JOIN orders o ON u.user_id = o.user_id;

-- Câu 2
SELECT u.user_id, u.user_name, COUNT(o.order_id) AS total_orders
FROM users u
JOIN orders o ON u.user_id = o.user_id
GROUP BY u.user_id;

-- Câu 3
SELECT order_id, COUNT(product_id) AS total_products
FROM order_details
GROUP BY order_id;

-- Câu 4
SELECT u.user_id, u.user_name, o.order_id, p.product_name
FROM users u
JOIN orders o ON u.user_id = o.user_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
ORDER BY o.order_id;

-- Câu 5
SELECT u.user_id, u.user_name, COUNT(o.order_id) AS total_orders
FROM users u
JOIN orders o ON u.user_id = o.user_id
GROUP BY u.user_id
ORDER BY total_orders DESC
LIMIT 7;

-- Câu 6
SELECT u.user_id, u.user_name, o.order_id, p.product_name
FROM users u
JOIN orders o ON u.user_id = o.user_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
WHERE p.product_name LIKE '%Samsung%'
OR p.product_name LIKE '%Apple%';

-- Câu 7
SELECT u.user_id, u.user_name, o.order_id, SUM(p.product_price) AS total_price
FROM users u
JOIN orders o ON u.user_id = o.user_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY o.order_id;

-- Câu 8
SELECT *
FROM (
    SELECT u.user_id, u.user_name, o.order_id, SUM(p.product_price) AS total_price
    FROM users u
    JOIN orders o ON u.user_id = o.user_id
    JOIN order_details od ON o.order_id = od.order_id
    JOIN products p ON od.product_id = p.product_id
    GROUP BY o.order_id
) t
ORDER BY total_price DESC;

-- Câu 9
SELECT *
FROM (
    SELECT u.user_id, u.user_name, o.order_id, 
           SUM(p.product_price) AS total_price,
           COUNT(p.product_id) AS total_products
    FROM users u
    JOIN orders o ON u.user_id = o.user_id
    JOIN order_details od ON o.order_id = od.order_id
    JOIN products p ON od.product_id = p.product_id
    GROUP BY o.order_id
) t
ORDER BY total_price ASC;

-- Câu 10
SELECT *
FROM (
    SELECT u.user_id, u.user_name, o.order_id, 
           SUM(p.product_price) AS total_price,
           COUNT(p.product_id) AS total_products
    FROM users u
    JOIN orders o ON u.user_id = o.user_id
    JOIN order_details od ON o.order_id = od.order_id
    JOIN products p ON od.product_id = p.product_id
    GROUP BY o.order_id
) t
ORDER BY total_products DESC;

