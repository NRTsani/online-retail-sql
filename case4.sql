SELECT
    ROUND(AVG(o.total_amount), 2) AS average_transaction_amount
FROM
    OnlineRetaildb.orders o
WHERE
    o.order_date >= CURDATE() - INTERVAL 1 MONTH;