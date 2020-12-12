use shop;
SELECT * FROM product
    INNER JOIN category on product.category_id = category.id;

SELECT product.id, price, name FROM product
	INNER JOIN category on product.category_id = category.id;

SELECT * FROM category
	INNER JOIN product on product.category_id = category.id;    
 
SELECT * FROM product
	INNER JOIN category on product.category_id = category.id
    WHERE price < 20000;
    
SELECT * FROM product
	INNER JOIN category on product.category_id = category.id
    INNER JOIN brand on brand_id = product.brand_id
    INNER JOIN product_type on product_type_id = product.product_type_id;
    
SELECT product.id, brand.type, product_type.type, category.name, product.price FROM product
	INNER JOIN category on product.category_id = category.id
    INNER JOIN brand on brand_id = product.brand_id
    INNER JOIN product_type on product_type_id = product.product_type_id;    
-- DZ --
SELECT * FROM product
	INNER JOIN category ON product.category_id = category.id;
    
SELECT product.id, brand.type, product_type.type, category.name, product.price FROM product
	INNER JOIN category on product.category_id = category.id
    INNER JOIN brand on brand_id = product.brand_id
    INNER JOIN product_type on product_type_id = product.product_type_id
    WHERE product_type.type = 'Футболка';