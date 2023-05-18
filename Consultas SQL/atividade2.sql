SELECT e.first_name + ' ' + e.last_name AS nome,
ROUND(SUM(od.unit_price * od.quantity),3) AS total 
FROM order_details od
INNER JOIN orders o ON (o.order_id = od.order_id)
INNER JOIN employees e ON (e.employee_id = o.employee_id)
WHERE DATE_PART(year,o.order_date) = 2022
GROUP BY nome
ORDER BY total desc