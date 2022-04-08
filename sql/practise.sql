SELECT max(ShipperID), CustomerId 
FROM Orders
GROUP BY CustomerID
HAVING count(3)
ORDER BY CustomerID DESC;

USE Customers;

CREATE TABLE  Customers(
	CustomerID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    City VARCHAR(50) DEFAULT 'Mumbai',
    Country VARCHAR(50) DEFAULT 'India'
);

SELECT * FROM Customers;

INSERT INTO Customers(FirstName, LastName, City, Country)
VALUE ('Akash', "Singh");

INSERT INTO Customers(FirstName, LastName, City, Country)
VALUE ('Vikash', "Singh","", "");

UPDATE Customers
SET City =  "Patna", Country = 'India'
WHERE CustomerID = 2;

INSERT INTO Customers(FirstName, LastName)
VALUE ('Sanket', "Agaskar");

INSERT INTO Customers(FirstName, LastName, City, Country)
VALUE ('Pranay',"Mohapatra",'Bhubaneswar','India');

INSERT INTO Customers(FirstName, LastName)
VALUE ('Shubham', "Mishra");

INSERT INTO Customers VALUES ( 6,'Chinmay',"Veerkar",'Waterloo','Canada');

INSERT INTO Customers VALUES ( NULL, 'Shubham', "Bag", 'Kolkata', 'India');

INSERT INTO Customers VALUES ( NULL, 'Shilp', "Pandya", 'Toronto', 'Canada');

update Customers
SET City = 'Nalasopara'
WHERE CustomerID = 5 ;

SELECT * FROM Customers
order by LastName;

CREATE INDEX name
ON Customers(FirstName);

DROP INDEX name
ON Customers;

USE practise;

CREATE TABLE  Employees(
	EmployeeID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    LastName VARCHAR(50),
    FirstName VARCHAR(50),DROP INDEX name
ON Customers;
    BirthDate date
);


select * from Employees;
use sakila;
select * from actor;

USE sakila;

SELECT * FROM  payment;

SELECT * FROM  customer;

SELECT customer_id, payment_alert  
FROM payment
WHERE payment_date BETWEEN '2006-02-01' AND '2006-02-15'
GROUP BY customer_id;

SELECT customer.first_name, customer.last_name, payment.payment_date, count(customer.customer_id) as id
 FROM customer
LEFT JOIN payment
ON customer.customer_id = payment.customer_id
group by customer_id;


select store_id,count(customer_id) as total
from customer
group by store_id ;

SELECT * FROM  customer;
SELECT * FROM  payment;

select customer_id, count(payment_id) as orders
from payment
group by customer_id;

SELECT customer.first_name, customer.last_name, payment.customer_id, count(payment.payment_id) as orders
FROM payment JOIN customer 
ON customer.customer_id = payment.customer_id
GROUP BY payment.customer_id;


SELECT  payment_id, customer_id, payment_date,
-- convert(varchar, payment_date,1) converted_date
format(payment_date, 'mm/dd/yyyy') converted_date
FROM payment;

SELECT customer.first_name, customer.last_name, payment.customer_id, count(payment.payment_id) as orders
FROM payment JOIN customer 
ON customer.customer_id = payment.customer_id
GROUP BY payment.customer_id;

SELECT * FROM payment
WHERE payment_date
BETWEEN 01/08/2005 AND 15/08/2005;

SELECT customer.first_name, customer.last_name, payment.customer_id, count(payment.payment_id) as orders
FROM payment JOIN customer 
ON customer.customer_id = payment.customer_id
WHERE payment.payment_date BETWEEN '2005-08-01 00:00:00' AND '2005-08-15 00:00:00'
GROUP BY payment.customer_id
ORDER BY payment_date;

use practise;

CREATE TABLE Orders(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(50),
    customer_id INT,
	product_id INT,
    price INT
);

INSERT INTO Orders(customer_name, customer_id, product_id, price)
VALUE ('akash', 1, 1, 300);
INSERT INTO Orders(customer_name, customer_id, product_id, price)
VALUE ('akash', 1, 2, 450);
INSERT INTO Orders(customer_name, customer_id, product_id, price)
VALUE ('akash', 1, 3, 950);
INSERT INTO Orders(customer_name, customer_id, product_id, price)
VALUE ('sanket', 1, 4, 300);
INSERT INTO Orders(customer_name, customer_id, product_id, price)
VALUE ('sanket', 1, 5, 500);
INSERT INTO Orders(customer_name, customer_id, product_id, price)
VALUE ('sanket', 1, 6, 500);
INSERT INTO Orders(customer_name, customer_id, product_id, price)
VALUE ('sanket', 1, 7, 500);

UPDATE Orders 
SET customer_id = 2
where id = 7;

SELECT customer_id, sum(price), product_id 
FROM Orders
group by customer_id;
 
