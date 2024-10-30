-- Creates a table users following given requirements.
-- Requirements: Id, email, name, counntry code (default is 1st enum).
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    email CHAR(255) UNIQUE NOT NULL,
    name CHAR(255),
    country ENUM('US', 'CO', 'TN') DEFAULT 'US'  NOT NULL
);
