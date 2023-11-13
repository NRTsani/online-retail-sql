SELECT
    p.category,
    COUNT(*) AS total_products
FROM
    OnlineRetaildb.products p
GROUP BY
    p.category
ORDER BY
    total_products DESC
LIMIT 1;