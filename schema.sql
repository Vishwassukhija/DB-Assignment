-- Create the database
CREATE DATABASE FullStack;

-- Use the database
USE FullStack;

-- Create the Product_Category table
CREATE TABLE Product_Category (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Create the Product_Inventory table
CREATE TABLE Product_Inventory (
    id INT PRIMARY KEY AUTO_INCREMENT,
    quantity INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Create the Discount table
CREATE TABLE Discount (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    discount_percent DECIMAL(5, 2),
    active BOOLEAN,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Create the Product table with foreign key constraints
CREATE TABLE Product (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    SKU VARCHAR(50),
    category_id INT,
    inventory_id INT,
    price DECIMAL(10, 2),
    discount_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES Product_Category(id),
    FOREIGN KEY (inventory_id) REFERENCES Product_Inventory(id),
    FOREIGN KEY (discount_id) REFERENCES Discount(id)
);
