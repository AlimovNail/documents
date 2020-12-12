CREATE TABLE `shop`.`order` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(128) NOT NULL,
  `phone` VARCHAR(45) NOT NULL,
  `datetime` DATETIME NOT NULL,
  PRIMARY KEY (`id`));
  INSERT INTO shop.order (user_name,phone,datetime) VALUES ('Василий', "555-55-55", "2020-10-12 14:46");
  
  CREATE TABLE `shop`.`order_products` (
  `order_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  `count` INT NULL,
  PRIMARY KEY (`order_id`, `product_id`));
  
INSERT INTO `shop`.`order_products` (`order_id`, `product_id`, `count`) VALUES ('1', '1', '1');
INSERT INTO `shop`.`order_products` (`order_id`, `product_id`, `count`) VALUES ('1', '2', '3');

ALTER TABLE `shop`.`order_products` 
ADD INDEX `fk_order_products_product_idx` (`product_id` ASC) VISIBLE;
;
ALTER TABLE `shop`.`order_products` 
ADD CONSTRAINT `fk_order_products_order`
  FOREIGN KEY (`order_id`)
  REFERENCES `shop`.`order` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_order_products_product`
  FOREIGN KEY (`product_id`)
  REFERENCES `shop`.`product` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
ALTER TABLE `shop`.`order_products` 
CHANGE COLUMN `count` `count` INT NOT NULL ;  