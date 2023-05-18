SELECT od.order_id AS idpedido, od.quantity AS quantidade, p.product_name AS produto,
       od.unit_price AS preco_pedido, p.unit_price AS preco_tabela,
       ROUND(p.unit_price - od.unit_price, 2) AS diferenca
FROM order_details od
JOIN products p ON od.product_id = p.product_id
WHERE od.unit_price < p.unit_price
ORDER BY diferenca DESC;