use Datamart;
use guitarShop2;
Create Table Datamart.sales_by_staff  select CONCAT(staff.fname, ' ', staff.lname) as Employee,  sum(orders.amount * products.retail_price) as order_value 
from orders
join products
on orders.product_id = products.product_id
join staff 
on orders.staff_id = staff.staff_id
where order_date between '2018-01-01' AND '2019-05-01'
group by Employee with rollup;