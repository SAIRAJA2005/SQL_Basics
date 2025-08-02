-- Come here to learn my Way of SQL
-- create the database BookStoreDB
-- CREATE DATABASE BookStoreDB;

-- use database BookStoreDB
-- USE BookStoreDB;

/*
| Column Name     | Data Type    | Description           |
| --------------- | ------------ | --------------------- |
| book\_id        | INT          | Book ID (Primary Key) |
| title           | VARCHAR(150) | Title of the book     |
| author          | VARCHAR(100) | Author name           |
| price           | DECIMAL(6,2) | Price of the book     |
| published\_year | INT          | Year of publication   |

*/


-- CREATE TABLE books (
--     book_id INT PRIMARY KEY,
--     title VARCHAR(150),
--     author VARCHAR(100),
--     price DECIMAL(6,2),
--     published_year INT
-- );

-- insert the single data


-- INSERT INTO books (book_id, title, author, price, published_year)
-- VALUES (1, 'The Alchemist', 'Paulo Coelho', 399.50, 1988);


-- insert multiple data


-- INSERT INTO books (book_id, title, author, price, published_year)
-- VALUES 
-- (2, 'Atomic Habits', 'James Clear', 499.00, 2018),
-- (3, 'The Hobbit', 'J.R.R. Tolkien', 350.75, 1937),
-- (4, 'Deep Work', 'Cal Newport', 280.00, 2016);


-- get the all data from the table

-- select * from books;



-- Lets start the session --

-- ORDER BY clause is used to sort the result set in either ascending or descending order.


-- SELECT * FROM books ORDER BY published_year;

-- SELECT * FROM books order by published_year DESC;

-- INSERT into books (book_id, title, author, price, published_year)
-- VALUES (5, 'The Power of Habit', 'Charles Duhigg', 450.00, 2018);

-- SELECT * FROM books

-- if you want to sort by multiple columns, you can specify them in the ORDER BY clause separated by commas.
-- if any published_year is same then it will sort by price in descending order.

-- SELECT * from books ORDER BY published_year, price DESC;






