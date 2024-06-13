--    Creates a table named user
--    it contains name, id, email of the user



CREATE TABLE IF NOT EXISTS users (
	id INT NOT NULL AUTO_INCREMENT,
	email VARCHAR(255) NOT NULL UNIQUE,
	name VARCHAR(255),
    PRIMARY KEY (id)
	);

