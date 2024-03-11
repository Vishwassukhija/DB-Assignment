Question:- Explain the relationship between the "Product" and "Product_Category" entities from the above diagram.

Answer:- In the product table we have id,name,category_id, inventory_id column where id is primary key in the product table  and category_id is a foreign key is referencing the id column in the "product_category" table.In this we have one to many relationship where each belongs to exactly one category which is specified by category_id attribute in product table. however a single category can have multiple products associated with it and products belongs to exactly one category

Question:- How could you ensure that each product in the "Product" table has a valid category assigned to it?


Answer:- for this we simply use in create command in product table and product_category table. we can do with this command.

"Product_Category Table"

CREATE TABLE Product_Category (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(255)
);

"Product Table"

CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Product_Category(category_id)
);


with this command we simply ensure that product table has a valid category.
