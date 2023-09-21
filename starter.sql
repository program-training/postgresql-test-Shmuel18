1
SELECT * FROM employees;
2
SELECT COUNT(product_id) FROM products;
4
SELECT product_name,unit_price FROM products 
WHERE supplier_id = 2
ORDER BY unit_price DESC
LIMIT 3;
7
SELECT categories.category_name,AVG(unit_price)
from products
JOIN categories ON categories.category_id = products.category_id
GROUP BY categories.category_id
ORDER BY avg DESC
LIMIT 5
8
SELECT last_name,first_name,territories.territory_description   FROM employees
JOIN employee_territories ON employee_territories.employee_id = employees.employee_id
JOIN territories ON territories.territory_id = employee_territories.territory_id
9
SELECT employees.last_name,employees.first_name,COUNT(order_id) AS employeeWIN FROM orders
JOIN employees ON employees.employee_id = orders.employee_id
GROUP BY employees.employee_id
HAVING COUNT(order_id) > 100


