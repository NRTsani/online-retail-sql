-- update orders table total_amount

UPDATE OnlineRetaildb.orders o
SET o.total_amount = (
    SELECT SUM(p.price * oi.quantity)
    FROM OnlineRetaildb.order_items oi
    JOIN OnlineRetaildb.products p ON oi.product_id = p.id
    WHERE oi.order_id = o.id
)
WHERE o.id = 101;