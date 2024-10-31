-- Creates a trigger that decreases the quantity of an item after adding a new order.
DELIMITER //

CREATE TRIGGER items_update
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    DECLARE new_quantity INT;
    SET new_quantity = (SELECT quantity FROM items WHERE name = NEW.item_name) - NEW.number;

    UPDATE items
    SET quantity = new_quantity
    WHERE name = NEW.item_name;
END //

DELIMITER ;
