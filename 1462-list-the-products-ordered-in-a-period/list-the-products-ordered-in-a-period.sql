SELECT p.product_name, sum(o.unit) as unit
FROM Products p
JOIN Orders o
ON p.product_id = o.product_id
where o.order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY o.product_id
Having sum(o.unit) >= 100

