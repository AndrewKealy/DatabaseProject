use guitarShop2;

CREATE TRIGGER after_order_update
AFTER INSERT ON orders
 FOR EACH ROW 
 UPDATE products
 SET number_in_stock = number_in_stock - NEW.amount
 WHERE product_id = NEW.product_id;
 
 
