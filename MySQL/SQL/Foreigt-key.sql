ALTER TABLE `shop`.`product` 
DROP FOREIGN KEY `fk_product_type`,
DROP FOREIGN KEY `fk_category_id`;
ALTER TABLE `shop`.`product` 
ADD INDEX `fk_category_product_idx` (`category_id` ASC) VISIBLE,
ADD INDEX `fk_product_type_product_idx` (`product_type_id` ASC) VISIBLE,
DROP INDEX `fk_category_id_idx` ,
DROP INDEX `fk_product_type_idx` ;
;
ALTER TABLE `shop`.`product` 
ADD CONSTRAINT `fk_category_product`
  FOREIGN KEY (`category_id`)
  REFERENCES `shop`.`category` (`id`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_product_type_product`
  FOREIGN KEY (`product_type_id`)
  REFERENCES `shop`.`product_type` (`id`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION;

ALTER TABLE `shop`.`product` 
DROP FOREIGN KEY `fk_product_type`,
DROP FOREIGN KEY `fk_category_id`;
ALTER TABLE `shop`.`product` 
ADD INDEX `fk_category_product_idx` (`category_id` ASC) VISIBLE,
ADD INDEX `fk_product_type_product_idx` (`product_type_id` ASC) VISIBLE,
DROP INDEX `fk_category_id_idx` ,
DROP INDEX `fk_product_type_idx` ;
;
ALTER TABLE `shop`.`product` 
ADD CONSTRAINT `fk_category_product`
  FOREIGN KEY (`category_id`)
  REFERENCES `shop`.`category` (`id`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_product_type_product`
  FOREIGN KEY (`product_type_id`)
  REFERENCES `shop`.`product_type` (`id`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION;
