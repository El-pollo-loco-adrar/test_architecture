CREATE DATABASE test_angular CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE test_angular;

CREATE TABLE IF NOT EXISTS users (
	id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) UNICODE NOT NULL,
    user_password VARCHAR(255) NOT NULL,
    firstname VARCHAR(100),
    lastname VARCHAR(100)
);

CREATE TABLE tools(
	id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    tool_name VARCHAR(100) NOT NULL,
    tool_description TEXT,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

INSERT INTO users (email, user_password, firstname, lastname)
VALUES ('test@test.com', '1234', 'Bob', 'Marley');