SELECT
    p.product_name,
    oi.quantity
FROM
    OnlineRetaildb.customers c
JOIN
    OnlineRetaildb.orders o ON c.id = o.customer_id
JOIN
    OnlineRetaildb.order_items oi ON o.id = oi.order_id
JOIN
    OnlineRetaildb.products p ON oi.product_id = p.id
WHERE
    c.id = 2;