Question:- Explain the relationship between the "Product" and "Product_Category" entities from the above diagram.

Answer:- In the product table we have id,name,category_id, inventory_id column where id is primary key in the product table  and category_id is a foreign key is referencing the id column in the "product_category" table.In this we have one to many relationship where each belongs to exactly one category which is specified by category_id attribute in product table. however a single category can have multiple products associated with it and products belongs to exactly one category
