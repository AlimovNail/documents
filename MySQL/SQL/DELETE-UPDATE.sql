UPDATE category SET name = 'Головные уборы' WHERE id = 5;
UPDATE category SET discount = 3 WHERE id = 2 OR id = 5;
UPDATE category SET discount = 3 WHERE id IN (2,5); -- равнозначные записи строчкой выше
DELETE FROM category WHERE id = 5;

-- (Согласованность данных)
INSERT INTO product (brand_id, product_type_id, category_id, price) VALUES (1,1,1,8999);
