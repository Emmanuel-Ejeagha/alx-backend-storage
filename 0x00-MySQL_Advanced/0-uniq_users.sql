/*
    Creates a table named user
    it contains name, id, email of the user
*/

CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOt NULL UNIQUE,
    name VARCHAR(255) 

);