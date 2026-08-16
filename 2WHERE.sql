CREATE DATABASE 2WHERE;
USE 2WHERE;

CREATE TABLE orders (
    ord_no INT PRIMARY KEY,
    purch_amt DECIMAL(10,2),
    ord_date DATE,
    customer_id INT,
    salesman_id INT
);

INSERT INTO orders VALUES
(70001,150.50,'2012-10-05',3005,5002),
(70009,270.65,'2012-09-10',3001,5005),
(70002,65.26,'2012-10-05',3002,5001),
(70004,110.50,'2012-08-17',3009,5003),
(70007,948.50,'2012-09-10',3005,5002),
(70005,2400.60,'2012-07-27',3007,5001),
(70008,5760.00,'2012-09-10',3002,5001),
(70010,1983.43,'2012-10-10',3004,5006),
(70003,2480.40,'2012-10-10',3009,5003),
(70012,250.45,'2012-06-27',3008,5002),
(70011,75.29,'2012-08-17',3003,5007),
(70013,3045.60,'2012-04-25',3002,5001);


-- WHERE
SELECT *
FROM orders
WHERE purch_amt > 2000;


-- GROUP BY
SELECT salesman_id,
       SUM(purch_amt) AS total_sales
FROM orders
GROUP BY salesman_id;


-- HAVING
SELECT salesman_id,
       SUM(purch_amt) AS total_sales
FROM orders
GROUP BY salesman_id
HAVING SUM(purch_amt) > 3000;


-- ORDER BY
SELECT *
FROM orders
ORDER BY purch_amt DESC;


-- SUM
SELECT SUM(purch_amt) AS total_revenue
FROM orders;


-- AVG
SELECT AVG(purch_amt) AS average_order
FROM orders;


-- MAX
SELECT MAX(purch_amt) AS highest_order
FROM orders;


-- MIN
SELECT MIN(purch_amt) AS lowest_order
FROM orders;


-- COUNT
SELECT COUNT(*) AS total_orders
FROM orders;


CREATE TABLE first_table (
    id INT,
    name VARCHAR(30)
);

CREATE TABLE second_table (
    id INT,
    name VARCHAR(30)
);

INSERT INTO first_table VALUES
(1,'Laxman1'),
(2,'Laxman2');

INSERT INTO second_table VALUES
(2,'Laxman3'),
(3,'Laxman4');


-- UNION
SELECT *
FROM first_table
UNION
SELECT *
FROM second_table;


-- INTERSECT
SELECT *
FROM first_table
INTERSECT
SELECT *
FROM second_table;