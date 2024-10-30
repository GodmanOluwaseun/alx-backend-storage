-- Script that creates table called users following given requirements.
-- Requirements: Id int autoincrement, email, name.
CREATE TABLE IF NOT EXISTS users(
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    email CHAR(255) UNIQUE NOT NULL,
    name CHAR(255)
);
