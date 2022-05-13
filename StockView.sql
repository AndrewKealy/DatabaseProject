use guitarShop2;
create view Stock AS
select product_model, number_in_stock, CONCAT(suppliers.fname, ' ', suppliers.lname) as Supplier
from products
join suppliers
on products.supplier_id = suppliers.supplier_id;