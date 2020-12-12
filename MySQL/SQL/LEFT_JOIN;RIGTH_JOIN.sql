SELECT category.* FROM category
	LEFT JOIN product ON product.category_id = category.id
    WHERE product.id is NULL;
    
SELECT category.* FROM product
	RIGHT JOIN category ON product.category_id = category.id
    WHERE product.id is NULL;    