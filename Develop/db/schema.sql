-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

USE ecommerce_db;

CREATE TABLE category (
    id              INT             NOT NULL    PRIMARY KEY                         ,
    category_name   VARCHAR(30)     NOT NULL
);

CREATE TABLE product (
    id              INT             NOT NULL    PRIMARY KEY     AUTO_INCREMENT      ,
    product_name    VARCHAR(30)     NOT NULL                                        ,
    price           DECIMAL         NOT NULL                    '_______________'   ,
    stock           INT             NOT NULL    10              '_______________'   ,
    category_id,
    FOREIGN KEY (category_id) REFERENCES category(id)
);


CREATE TABLE tag (
    id              INT             NOT NULL    PRIMARY KEY     AUTO_INCREMENT      ,
    tag_name        VARCHAR(50)
);

CREATE TABLE productTag (
    id              INT             NOT NULL    PRIMARY KEY     AUTO_INCREMENT      ,
    product_id      INT                                                             ,
    FOREIGN KEY (product_id) REFERENCES product(id)

);