use shop;
SELECT name FROM category;
SELECT name, discount FROM category;
-- вывести все уникальные значения скидок --
SELECT DISTINCT discount FROM category;
-- вывести все категории товаров, и отсортировать их по размеру скидки -- 
SELECT * FROM category ORDER BY discount;  -- ASC;--
-- вывести все категории товаров, и отсортировать их по размеру скидки в обратном порядке--
SELECT * FROM category ORDER BY discount DESC;

-- вывести все категории товаров с ненулевой скидкой и отсортировать их по размеру скидки в обратном порядке -- 
SELECT * FROM category WHERE discount <> 0 ORDER BY discount DESC;

-- вывести первые 2 категории товара --
SELECT * FROM category WHERE id < 3;
SELECT * FROM category LIMIT 2;

-- вывести первые 2 категории товара со скидкой не равной 0 --
SELECT * FROM category  WHERE discount <> 0 LIMIT 2;

-- вывести название бренда c инентификаторм 3 -- 
SELECT * FROM brand WHERE id = 3;

-- вывести первые 2 типа товара -- 
SELECT * FROM good_type LIMIT 2;

-- получить все категории товаров со скидкой < 10% и отсортировать их по названию --
SELECT name, discount  FROM category  WHERE discount < 10 ORDER BY name;
