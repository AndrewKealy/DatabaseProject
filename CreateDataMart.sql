use guitarshop2;
Create database Datamart;
Create Table Datamart.transactions select CONCAT(customers.fname, ' ', customers.lname) as Customer, 
orders.product_id, products.retail_price, orders.staff_id, CONCAT(staff.fname, ' ', staff.lname) as Employee, amount, (orders.amount * products.retail_price) as order_value, order_date
from orders
Join customers
on orders.customer_id = customers.customer_id
Join staff
on orders.staff_id = staff.staff_id
Join products
on orders.product_id = products.product_id
Where order_date between '2018-01-01' AND '2018-01-08'
ORDER BY order_date;
