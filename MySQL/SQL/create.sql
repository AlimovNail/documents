CREATE SCHEMA `shop` CHARACTER SET `utf8` COLLATE `utf8_bin`;
CREATE TABLE `shop`.`category`
(
    `id`         INT          NOT NULL AUTO_INCREMENT,
    `name`       VARCHAR(128) NOT NULL,
    `discount`   TINYINT      NOT NULL,
    `alias_name` VARCHAR(128) NULL,
    PRIMARY KEY (`id`)
);
CREATE TABLE `shop`.`brand`
(
    `id`   INT          NOT NULL AUTO_INCREMENT,
    `type` VARCHAR(256) NOT NULL,
    PRIMARY KEY (`id`)
);
CREATE TABLE `shop`.`good_type`
(
    `id`   INT          NOT NULL AUTO_INCREMENT,
    `type` VARCHAR(128) NOT NULL,
    PRIMARY KEY (`id`)
);
CREATE TABLE `shop`.`goods`
(
    `vendor_code`  VARCHAR(128) NOT NULL,
    `brand_id`     INT          NOT NULL,
    `good_type_id` INT          NOT NULL,
    `category_id`  INT          NOT NULL,
    `price`        FLOAT        NOT NULL,
    PRIMARY KEY (`vendor_code`)
);