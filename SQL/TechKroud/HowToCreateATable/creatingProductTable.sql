USE almacen;
CREATE TABLE `almacen`. `products` (
	codigo INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    producto VARCHAR(150) NOT NULL,
    precio FLOAT(6,2) UNSIGNED DEFAULT 0.0
    -- PRIMARY KEY (codigo)
);

SHOW TABLES FROM almacen;
SELECT * FROM products;	-- SHOW `product` TABLE