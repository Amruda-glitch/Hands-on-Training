SELECT item_name, final_total
FROM restaurant;

SELECT COUNT(DISTINCT invoice_no) AS total_invoices
FROM restaurant;

SELECT item_name,
       SUM(qty) AS total_quantity
FROM restaurant
GROUP BY item_name
ORDER BY total_quantity DESC
LIMIT 5;

SELECT item_name,
       SUM(final_total) AS revenue
FROM restaurant
GROUP BY item_name
ORDER BY revenue DESC
LIMIT 5;

SELECT category,
       SUM(final_total) AS total_revenue
FROM restaurant
GROUP BY category
ORDER BY total_revenue DESC;

SELECT *
FROM restaurant
WHERE final_total = (
    SELECT MAX(final_total)
    FROM restaurant
);

SELECT category,
       SUM(final_total) AS revenue
FROM restaurant
GROUP BY category
ORDER BY revenue DESC
LIMIT 1;