show databases;

use hogwartsdb;

CREATE TABLE IF NOT EXISTS product(
	p_id VARCHAR(10) NOT NULL,
	p_name VARCHAR(20),
	p_price INTEGER,
	p_description TEXT,
	p_category VARCHAR(20),
	p_unitsInStock INTEGER,
	p_condition VARCHAR(20),
	p_filename VARCHAR(20),
	PRIMARY KEY (p_id)
)default CHARSET=utf8;

desc product;

show tables;

INSERT INTO product VALUES("W1", "Wand", 72000, "12 inch, made out of wood", "Wand", 12, "New", "wand.jpg");
INSERT INTO product VALUES("B1", "Book", 50000, "Harry Potter series book set 1~7", "Book", 5, "New", "books.jpg");
INSERT INTO product VALUES("G1", "Badge", 30000, "House Badge: Gryffindor, Slytherin, Hufflepuff, Ravenclaw", "Badge", 4, "New", "badge.jpg");
INSERT INTO product VALUES("R1", "Broomstick", 100000, "Broomstick, try flying with this!", "Broomstick", 3, "Used","broomstick.jpg");

SELECT * FROM product;