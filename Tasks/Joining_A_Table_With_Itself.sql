CREATE TABLE customers (
    id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    name TEXT,
    email TEXT);
    
INSERT INTO customers (name, email) VALUES ('Doctor Who', 'doctorwho@timelords.com');
INSERT INTO customers (name, email) VALUES ('Harry Potter', 'harry@potter.com');
INSERT INTO customers (name, email) VALUES ('Captain Awesome', 'captain@awesome.com');

CREATE TABLE orders (
    id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    customer_id INTEGER,
    item TEXT,
    price REAL);

INSERT INTO orders (customer_id, item, price)
    VALUES (1, 'Sonic Screwdriver', 1000.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (2, 'High Quality Broomstick', 40.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (1, 'TARDIS', 1000000.00);

/*select customer name and email and outer join with the orders item and price*/  
SELECT
customers.name,
customers.email,
orders.item,
orders.price
FROM customers
    LEFT OUTER JOIN orders
   ON customers.id =orders.customer_id;
   
/*Now, create another query that will result in one row per each customer, with their name, 
email, and total amount of money they've spent on orders. Sort the rows according to the total money spent, from the most spent to the least spent.*/

SELECT
customers.name,
customers.email,
SUM(orders.price) as total_money_spent
FROM customers
    LEFT OUTER JOIN orders
   ON customers.id =orders.customer_id
   GROUP BY customers.name
   ORDER BY orders.price desc ;