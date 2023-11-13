SELECT
    p.id AS product_id,
    p.product_name,
    SUM(oi.quantity) AS total_ordered
FROM
    OnlineRetaildb.products p
JOIN
    OnlineRetaildb.order_items oi ON p.id = oi.product_id
GROUP BY
    p.id, p.product_name
ORDER BY
    total_ordered DESC
LIMIT 3;