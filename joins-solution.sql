--1. 
SELECT * FROM customers
JOIN addresses ON customers.id = addresses.customer_id;
--2. 
SELECT * FROM orders
JOIN line_items ON orders.id = line_items.order_id;
--3. 
SELECT * FROM warehouse
JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id
JOIN products ON warehouse_product.product_id = products.id WHERE products.id = 5;
--4.
SELECT * FROM warehouse
JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id
JOIN products ON warehouse_product.product_id = products.id WHERE products.id = 6;
--5.
SELECT COUNT(orders),
 	customers.first_name
  FROM customers
  JOIN addresses ON addresses.customer_id = customers.id
  JOIN orders ON orders.address_id = addresses.id
  GROUP BY customers.id;

--6. 	
SELECT COUNT(customers)
FROM customers;

--7.
SELECT COUNT(products)
FROM products;

--8.

