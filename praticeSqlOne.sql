-- use rajasql

-- CREATE TABLE Orders (
--     order_id INT,
--     customer VARCHAR(50),
--     amount INT,
--     order_date DATE
-- );

-- INSERT INTO Orders VALUES
-- (1, 'Alice', 100, '2025-08-01'),
-- (2, 'Bob', 200, '2025-08-02'),
-- (3, 'Alice', 300, '2025-08-03'),
-- (4, 'David', 400, '2025-08-04');

-- select * from orders

-- Count total orders.
-- select count(*) from orders;

-- Find total amount spent by all customers.
-- select sum(amount) from orders;

-- Find the average order amount.
-- select avg(amount) from orders;

-- Get the name of customers in uppercase.
-- select upper(customer) from Orders;

-- Show order dates and the year of each order.
-- select order_date, year(order_date) from orders;

-- Display customer names along with the number of characters in their names.

-- select customer, length(customer) as No_Of_Chars from orders;

-- INSERT INTO Orders VALUES (5, 'Bob', 100, '2025-08-05');

-- Delete the data in the Orders tables
-- TRUNCATE table Orders;

--  Another Table

-- INSERT INTO orders (order_id, customer, amount, order_date)
-- VALUES (1, 'Alice', 100, '2025-08-01'),
--        (2, 'Bob', 200, '2025-08-02'),
--        (3, 'Alice', 300, '2025-08-03'),
--        (4, 'David', 400, '2025-08-04'),
--        (5, 'Bob', 100, '2025-08-05');

-- Find how many orders each customer made.
-- select customer, count(*) as order_count from orders group by customer;

-- Show total amount spent by each customer.
-- select customer, sum(amount) as Total_Amount from orders group by customer;

-- Show customers who spent more than 250.
-- select customer, sum(amount) from orders group by customer having sum(amount) >= 250;

-- Find customers who made more than 1 order.
-- select customer, count(*) as order_count from orders group by customer having count(*) > 1

-- Show total amount spent by each customer only for orders above 150.
-- select customer, sum(amount) as total_amount from orders group by customer having sum(amount) > 150 


-- Delete the order table;
-- DROP table Orders;



-- Another table

-- CREATE TABLE Orders (
--     order_id INT PRIMARY KEY,
--     customer VARCHAR(50),
--     amount INT,
--     order_date DATE,
--     product VARCHAR(50)
-- );


-- INSERT INTO Orders (order_id, customer, amount, order_date, product)
-- VALUES 
-- (1, 'Alice', 100, '2025-08-01', 'Laptop'),
-- (2, 'Bob', 200, '2025-08-02', 'Phone'),
-- (3, 'Alice', 300, '2025-08-03', 'Laptop'),
-- (4, 'David', 400, '2025-08-04', 'Tablet'),
-- (5, 'Bob', 100, '2025-08-05', 'Laptop'),
-- (6, 'Clara', 250, '2025-08-06', 'Phone'),
-- (7, 'Bob', 150, '2025-08-07', 'Tablet');

-- Total number of orders placed per product
-- select product, count(*) from orders group by product;

-- List customers who placed more than 2 orders.
-- select customer, count(*) from orders group by customer having count(*) > 2;

-- Show total amount spent on each product (only consider orders over ₹150).
-- select product, sum(amount) as total_amount from orders where amount > 150 group by product

-- For each customer, find their highest single order amount.
-- select customer, max(amount) from orders group by customer;

-- Find customers who spent more than ₹400 in total.
-- select customer, sum(amount) from orders group by customer having sum(amount) > 400

-- Count how many products each customer has ordered (assume duplicates allowed).
-- select customer, count(product) from orders group by customer

-- Count how many unique products each customer has ordered.
-- select customer, count(DISTINCT product) from orders group by customer;

-- For each product, find total revenue and number of buyers.
-- select product , sum(amount), count(DISTINCT customer) from orders group by product;

-- For each customer, list the average amount per order.
-- select customer , avg(amount) from orders group by customer 



/* -----> JOINS <----- */


-- CREATE TABLE Customers (
--     customer_id INT PRIMARY KEY,
--     name VARCHAR(100),
--     email VARCHAR(100)
-- );

-- INSERT INTO Customers (customer_id, name, email)
-- VALUES 
-- (1, 'Alice', 'alice@mail.com'),
-- (2, 'Bob', 'bob@mail.com'),
-- (3, 'Clara', 'clara@mail.com'),
-- (4, 'David', 'david@mail.com');

-- CREATE TABLE Orders (
--     order_id INT PRIMARY KEY,
--     customer_id INT,
--     amount INT,
--     order_date DATE,
--     FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
-- );

-- INSERT INTO Orders (order_id, customer_id, amount, order_date)
-- VALUES 
-- (1, 1, 200, '2025-08-01'),
-- (2, 1, 300, '2025-08-03'),
-- (3, 2, 150, '2025-08-02'),
-- (4, 3, 250, '2025-08-04'),
-- (5, 4, 400, '2025-08-05');


-- use rajasql
-- Show customer name, email, and order amount.
-- select customers.name, customers.email from customers 
-- inner join Orders on Customers.customer_id = orders.customer_id;

-- List customer name and order date.
-- SELECT Customers.name , orders.order_date from Customers
-- INNER JOIN Orders ON Customers.customer_id = Orders.Customer_id;

-- Find all customers who placed an order of amount greater than 200.
-- SELECT Customers.name, Orders.amount from Customers
-- INNER JOIN Orders ON Customers.customer_id = Orders.customer_id 
-- where Orders.amount > 200;

-- List customers who placed more than 1 order (use GROUP BY with join)
-- SELECT Customers.name, count(*) AS total_orders from Customers
-- INNER JOIN Orders ON Customers.customer_id = Orders.customer_id 
-- GROUP BY  Orders.customer_id having count(*) > 1;


-- To delete the structure and data in the table 
DROP table Departments


/* --- Joins Pro --- */


-- CREATE TABLE Departments (
--     dept_id INT PRIMARY KEY,
--     dept_name VARCHAR(50),
--     location VARCHAR(50)
-- );


-- INSERT INTO Departments (dept_id, dept_name, location)
-- VALUES
-- (101, 'IT', 'New York'),
-- (102, 'HR', 'Chicago'),
-- (103, 'Finance', 'Los Angeles'),
-- (104, 'Marketing', 'Miami');


-- CREATE TABLE Employees (
--     emp_id INT PRIMARY KEY,
--     emp_name VARCHAR(50),
--     dept_id INT,
--     salary DECIMAL(10,2),
--     FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
-- );

-- -- FOREIGN KEY (dept_id) ensures an employee’s department must exist in the Departments table.


-- INSERT INTO Employees (emp_id, emp_name, dept_id, salary)
-- VALUES
-- (1, 'Alice', 101, 50000),
-- (2, 'Bob', 102, 60000),
-- (3, 'Charlie', 103, 55000),
-- (4, 'David', 101, 70000),
-- (5, 'Eve', NULL, 45000);

-- select * from Departments

-- select * from Employees

--  Returns rows where the matching column exists in both tables.

-- select e.emp_id, e.emp_name, d.dept_name from Employees e 
-- INNER JOIN Departments d on e.dept_id = d.dept_id

-- Returns all rows from the left table, and matched rows from the right table; 
-- unmatched rows get NULL.

-- select e.emp_id, e.emp_name, d.dept_name from Employees e 
-- LEFT JOIN Departments d on e.dept_id = d.dept_id

 -- Return all rows from the right table, matched rows from left.
 
--  select e.emp_id, e.emp_name, d.dept_name from Employees e 
-- RIGHT JOIN Departments d on e.dept_id = d.dept_id

-- Returns all rows from both tables, with NULL for missing matches.
-- Mysql didnt support full outer join , so we will use the left join and right join then UNION


-- SELECT e.emp_id, e.emp_name, d.dept_name
-- FROM Employees e
-- LEFT JOIN Departments d
--     ON e.dept_id = d.dept_id

-- UNION

-- SELECT e.emp_id, e.emp_name, d.dept_name
-- FROM Employees e
-- RIGHT JOIN Departments d
--     ON e.dept_id = d.dept_id;


-- SELF JOIN
-- Definition: Join a table with itself.
-- Example: Find employees who work in the same department as "Alice."

-- SELECT e1.emp_name AS Employee, e2.emp_name AS Colleague
-- FROM Employees e1
-- JOIN Employees e2
--     ON e1.dept_id = e2.dept_id
-- WHERE e1.emp_name = 'Alice' AND e1.emp_id <> e2.emp_id;






