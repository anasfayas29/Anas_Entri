CREATE DATABASE LIBRARY

USE LIBRARY

CREATE TABLE BRANCH(
BRANCH_NO INT PRIMARY KEY,
MANAGER_ID INT,
BRANCH_ADDRESS VARCHAR(30),
CONTACT_NO BIGINT
)

INSERT INTO BRANCH (BRANCH_NO, MANAGER_ID, BRANCH_ADDRESS, CONTACT_NO)
VALUES
(1, 101, '123 Main St', 5551234567),
(2, 102, '456 Oak St', 5552345678),
(3, 103, '789 Maple St', 5553456789),
(4, 104, '567 Pine St', 5554567890),
(5, 105, '890 Cedar St', 5555678901),
(6, 106, '234 Birch St', 5556789012),
(7, 107, '876 Elm St', 5557890123),
(8, 108, '345 Willow St', 5558901234),
(9, 109, '678 Cherry St', 5559012345),
(10, 110, '123 Birch Ln', 5550123456),
(11, 111, '456 Oak Ln', 5551234567),
(12, 112, '789 Maple Ln', 5552345678),
(13, 113, '567 Pine Ln', 5553456789),
(14, 114, '890 Cedar Ln', 5554567890),
(15, 115, '234 Pine Ln', 5555678901),
(16, 116, '876 Elm Ln', 5556789012),
(17, 117, '345 Willow Ln', 5557890123),
(18, 118, '678 Cherry Ln', 5558901234),
(19, 119, '123 Oak Ln', 5559012345),
(20, 120, '456 Maple Ln', 5550123456),
(21, 121, '789 Cedar Ln', 5551234567),
(22, 122, '567 Pine Ln', 5552345678),
(23, 123, '890 Birch Ln', 5553456789),
(24, 124, '234 Oak Ln', 5554567890),
(25, 125, '876 Maple Ln', 5555678901),
(26, 126, '345 Cedar Ln', 5556789012),
(27, 127, '678 Pine Ln', 5557890123),
(28, 128, '123 Elm Ln', 5558901234),
(29, 129, '456 Willow Ln', 5559012345),
(30, 130, '789 Cherry Ln', 5550123456);


CREATE TABLE EMPLOYEE (
Emp_ID INT PRIMARY KEY,
EMP_NAME VARCHAR(30),
POSITION VARCHAR(30),
SALARY INT,
BRANCH_NO INT,
FOREIGN KEY (BRANCH_NO) REFERENCES BRANCH(BRANCH_NO)
)

INSERT INTO EMPLOYEE VALUES
(1, 'John Doe', 'Manager', 80000, 1),
(2, 'Jane Smith', 'Assistant Manager', 60000, 2),
(3, 'Bob Johnson', 'Sales Associate', 45000, 1),
(4, 'Alice Brown', 'Cust_Service_Representative', 40000, 3),
(5, 'Charlie Wilson', 'Accountant', 70000, 2),
(6, 'Eva Davis', 'HR Specialist', 55000, 4),
(7, 'Frank Miller', 'IT Specialist', 65000, 3),
(8, 'Grace Taylor', 'Marketing Coordinator', 50000, 5),
(9, 'Henry Carter', 'Sales Manager', 75000, 4),
(10, 'Ivy White', 'Executive Assistant', 60000, 1),
(11, 'Jack Adams', 'Software Engineer', 70000, 2),
(12, 'Kelly Harris', 'Customer Support Specialist', 45000, 3),
(13, 'Leo King', 'Financial Analyst', 65000, 4),
(14, 'Mia Turner', 'Marketing Manager', 75000, 5),
(15, 'Nathan Scott', 'Systems Administrator', 60000, 1),
(16, 'Olivia Green', 'Sales Representative', 50000, 2),
(17, 'Peter Evans', 'Accounting Clerk', 40000, 3),
(18, 'Quinn Parker', 'HR Assistant', 45000, 4),
(19, 'Rachel Murphy', 'IT Support Technician', 55000, 5),
(20, 'Samuel Reed', 'Marketing Assistant', 50000, 1),
(21, 'Tina Foster', 'Sales Associate', 45000, 2),
(22, 'Ulysses Grant', 'Financial Manager', 80000, 3),
(23, 'Violet Hayes', 'IT Manager', 70000, 4),
(24, 'William Turner', 'Customer Relations Manager', 65000, 5),
(25, 'Xavier White', 'Marketing Specialist', 55000, 1),
(26, 'Yasmine Adams', 'Sales Coordinator', 60000, 2),
(27, 'Zane Foster', 'Accounting Manager', 75000, 3),
(28, 'Abigail Taylor', 'IT Specialist', 65000, 4),
(29, 'Bryan Lewis', 'Customer Support Manager', 70000, 5),
(30, 'Cynthia Davis', 'Marketing Analyst', 60000, 1);


CREATE TABLE Customer (
Customer_ID INT PRIMARY KEY,
CUSTOMER_NAME VARCHAR(30),
CUSTOMER_ADDRESS VARCHAR(30),
Reg_Date DATE
)
INSERT INTO Customer (Customer_ID, CUSTOMER_NAME, CUSTOMER_ADDRESS, Reg_Date)
VALUES
(1, 'John Smith', '123 Main St', '2022-01-01'),
(2, 'Jane Doe', '456 Oak St', '2022-01-02'),
(3, 'Bob Johnson', '789 Maple St', '2022-01-03'),
(4, 'Alice Brown', '567 Pine St', '2022-01-04'),
(5, 'Charlie Wilson', '890 Cedar St', '2022-01-05'),
(6, 'Eva Davis', '234 Birch St', '2022-01-06'),
(7, 'Frank Miller', '876 Elm St', '2022-01-07'),
(8, 'Grace Taylor', '345 Willow St', '2022-01-08'),
(9, 'Henry Carter', '678 Cherry St', '2022-01-09'),
(10, 'Ivy White', '123 Birch Ln', '2022-01-10'),
(11, 'Jack Adams', '456 Oak Ln', '2022-01-11'),
(12, 'Kelly Harris', '789 Maple Ln', '2022-01-12'),
(13, 'Leo King', '567 Pine Ln', '2022-01-13'),
(14, 'Mia Turner', '890 Cedar Ln', '2022-01-14'),
(15, 'Nathan Scott', '234 Pine Ln', '2022-01-15'),
(16, 'Olivia Green', '876 Elm Ln', '2022-01-16'),
(17, 'Peter Evans', '345 Willow Ln', '2022-01-17'),
(18, 'Quinn Parker', '678 Cherry Ln', '2022-01-18'),
(19, 'Rachel Murphy', '123 Oak Ln', '2022-01-19'),
(20, 'Samuel Reed', '456 Maple Ln', '2022-01-20'),
(21, 'Tina Foster', '789 Cedar Ln', '2022-01-21'),
(22, 'Ulysses Grant', '567 Pine Ln', '2022-01-22'),
(23, 'Violet Hayes', '890 Birch Ln', '2022-01-23'),
(24, 'William Turner', '234 Oak Ln', '2022-01-24'),
(25, 'Xavier White', '876 Maple Ln', '2022-01-25'),
(26, 'Yasmine Adams', '345 Cedar Ln', '2022-01-26'),
(27, 'Zane Foster', '678 Pine Ln', '2022-01-27'),
(28, 'Abigail Taylor', '123 Elm Ln', '2022-01-28'),
(29, 'Bryan Lewis', '456 Willow Ln', '2022-01-29'),
(30, 'Cynthia Davis', '789 Cherry Ln', '2022-01-30');


CREATE TABLE BOOKS (
ISBN VARCHAR(30) PRIMARY KEY,
BOOK_TITLE VARCHAR(30),
CATEGORY VARCHAR(30),
RENTAL_PRICE VARCHAR(30),
Status_Of_Books ENUM('Yes', 'No'),
AUTHOR VARCHAR(30),
PUBLISHER VARCHAR(30)
)

INSERT INTO BOOKS VALUES
('978-0-123456-00-1', 'Intro SQL', 'Programming', 29.99, 'Yes', 'John Doe', 'Tech Pub'),
('978-0-123456-00-2', 'Python Basics', 'Programming', 34.99, 'No', 'Jane Smith', 'Code Books'),
('978-0-123456-00-3', 'Data Sci Essentials', 'Data Science', 39.99, 'Yes', 'Bob Johnson', 'Data Pub'),
('978-0-123456-00-4', 'Web Dev Fundamentals', 'Web Dev', 24.99, 'No', 'Alice Brown', 'Web Books'),
('978-0-123456-00-5', 'Network Security Principles', 'Network Security', 49.99, 'Yes', 'Charlie Wilson', 'Security Press'),
('978-0-123456-00-6', 'ML Mastery', 'Machine Learning', 44.99, 'No', 'Eva Davis', 'AI Books'),
('978-0-123456-00-7', 'DB Design Mgmt', 'Database', 34.99, 'Yes', 'Frank Miller', 'DataWare'),
('978-0-123456-00-8', 'Digital Mktg Strategies', 'Marketing', 29.99, 'No', 'Grace Taylor', 'Market Dynamics'),
('978-0-123456-00-9', 'Financial Mgmt Techniques', 'Finance', 39.99, 'Yes', 'Henry Carter', 'Finance Pub'),
('978-0-123456-01-0', 'Proj Mgmt Principles', 'Project Mgmt', 44.99, 'No', 'Ivy White', 'Proj Books'),
('978-0-123456-01-1', 'Java Prog Adv Topics', 'Programming', 49.99, 'Yes', 'Jack Adams', 'Code Books'),
('978-0-123456-01-2', 'Cust Service Excellence', 'Cust Service', 24.99, 'No', 'Kelly Harris', 'Service Pub'),
('978-0-123456-01-3', 'Financial Analysis Reporting', 'Finance', 34.99, 'Yes', 'Leo King', 'Finance Press'),
('978-0-123456-01-4', 'SM Mktg Strategies', 'Marketing', 29.99, 'No', 'Mia Turner', 'SM Books'),
('978-0-123456-01-5', 'Linux Sys Administration', 'Linux', 39.99, 'Yes', 'Nathan Scott', 'Tech Books'),
('978-0-123456-01-6', 'Sales Techniques Negotiation', 'Sales', 44.99, 'No', 'Olivia Green', 'Sales Dynamics'),
('978-0-123456-01-7', 'Accounting Principles', 'Accounting', 34.99, 'Yes', 'Peter Evans', 'Acc Publishers'),
('978-0-123456-01-8', 'HR Management', 'HR', 29.99, 'No', 'Quinn Parker', 'HR Books'),
('978-0-123456-01-9', 'Cybersecurity Essentials', 'Cybersecurity', 39.99, 'Yes', 'Rachel Murphy', 'Security Books'),
('978-0-123456-02-0', 'Cloud Computing Basics', 'Cloud Computing', 44.99, 'No', 'Samuel Reed', 'Cloud Books'),
('978-0-123456-02-1', 'Digital Photography Techniques', 'Photography', 24.99, 'Yes', 'Tina Foster', 'Photo Publishers'),
('978-0-123456-02-2', 'Economics for Managers', 'Economics', 34.99, 'No', 'Ulysses Grant', 'Econ Press'),
('978-0-123456-02-3', 'IT Project Management', 'Project Mgmt', 29.99, 'Yes', 'Violet Hayes', 'IT Books'),
('978-0-123456-02-4', 'Cust Rel Management', 'CRM', 39.99, 'No', 'William Turner', 'CRM Books'),
('978-0-123456-02-5', 'Digital Mktg Analytics', 'Marketing', 44.99, 'Yes', 'Xavier White', 'Mktg Analytics Press'),
('978-0-123456-02-6', 'Sales Mgmt Strategies', 'Sales', 34.99, 'No', 'Yasmine Adams', 'Sales Books'),
('978-0-123456-02-7', 'Managerial Acc Principles', 'Accounting', 29.99, 'Yes', 'Zane Foster', 'Acc Dynamics'),
('978-0-123456-02-8', 'Cust Support Best Practices', 'Cust Service', 39.99, 'No', 'Abigail Taylor', 'Service Books'),
('978-0-123456-02-9', 'SM Advertising Techniques', 'Marketing', 44.99, 'Yes', 'Bryan Lewis', 'SM Advertising Press'),
('978-0-123456-03-0', 'Mkt R&A', 'Marketing', 34.99, 'No', 'Cynthia Davis', 'Mkt Research Co');


CREATE TABLE RETURN_STATUS (
RETURN_ID INT PRIMARY KEY,
RETURN_CUST VARCHAR(30),
RETURN_BOOK_NAME VARCHAR(30),
RETURN_DATE DATE,
ISBN_BOOK2 VARCHAR (30),
FOREIGN KEY (ISBN_BOOK2) REFERENCES BOOKS(ISBN)
)

INSERT INTO RETURN_STATUS (RETURN_ID, RETURN_CUST, RETURN_BOOK_NAME, RETURN_DATE, ISBN_BOOK2)
VALUES
(1, 'Alice Brown', 'Data Sci Essentials', '2024-01-20', '978-0-123456-00-3'),
(2, 'Tina Foster', 'Data Sci Essentials', '2024-01-20', '978-0-123456-00-3'),
(3, 'Xavier White', 'Data Sci Essentials', '2024-01-20', '978-0-123456-00-3'),
(4, 'Grace Taylor', 'Data Sci Essentials', '2024-01-20', '978-0-123456-00-3'),
(5, 'Cynthia Davis', 'Data Sci Essentials', '2024-01-20', '978-0-123456-00-3'),
(6, 'Yasmine Adams', 'Data Sci Essentials', '2024-01-20', '978-0-123456-00-3'),
(7, 'Charlie Wilson', 'Data Sci Essentials', '2024-01-20', '978-0-123456-00-3'),
(8, 'John Smith', 'Data Sci Essentials', '2024-01-20', '978-0-123456-00-3'),
(9, 'Bryan Lewis', 'Data Sci Essentials', '2024-01-20', '978-0-123456-00-3'),
(10, 'Abigail Taylor', 'Data Sci Essentials', '2024-01-20', '978-0-123456-00-3'),
(21, 'Eva Davis', 'Accounting Principles', '2024-02-25', '978-0-123456-01-7'),
(22, 'Ulysses Grant', 'Accounting Principles', '2024-02-25', '978-0-123456-01-7'),
(23, 'Grace Taylor', 'Accounting Principles', '2024-02-25', '978-0-123456-01-7'),
(24, 'Jane Doe', 'Accounting Principles', '2024-02-25', '978-0-123456-01-7'),
(25, 'Frank Miller', 'Accounting Principles', '2024-02-25', '978-0-123456-01-7'),
(26, 'Ivy White', 'Accounting Principles', '2024-02-25', '978-0-123456-01-7'),
(27, 'Violet Hayes', 'Accounting Principles', '2024-02-25', '978-0-123456-01-7'),
(28, 'Charlie Wilson', 'Accounting Principles', '2024-02-25', '978-0-123456-01-7'),
(29, 'Bryan Lewis', 'Accounting Principles', '2024-02-25', '978-0-123456-01-7'),
(30, 'Xavier White', 'Accounting Principles', '2024-02-25', '978-0-123456-01-7'),
(41, 'Peter Evans', 'Cust Rel Management', '2024-03-30', '978-0-123456-02-4'),
(42, 'Ulysses Grant', 'Cust Rel Management', '2024-03-30', '978-0-123456-02-4'),
(43, 'Eva Davis', 'Cust Rel Management', '2024-03-30', '978-0-123456-02-4'),
(44, 'Kelly Harris', 'Cust Rel Management', '2024-03-30', '978-0-123456-02-4'),
(45, 'Jack Adams', 'Cust Rel Management', '2024-03-30', '978-0-123456-02-4'),
(46, 'Quinn Parker', 'Cust Rel Management', '2024-03-30', '978-0-123456-02-4'),
(47, 'Bob Johnson', 'Cust Rel Management', '2024-03-30', '978-0-123456-02-4'),
(48, 'Grace Taylor', 'Cust Rel Management', '2024-03-30', '978-0-123456-02-4'),
(49, 'William Turner', 'Cust Rel Management', '2024-03-30', '978-0-123456-02-4'),
(50, 'Nathan Scott', 'Cust Rel Management', '2024-03-30', '978-0-123456-02-4');


CREATE TABLE ISSUE_STATUS (
ISSUE_ID INT PRIMARY KEY,
ISSUED_CUST INT,
ISSUED_BOOK_NAME VARCHAR(60),
ISSUE_DATE DATE,
ISBN_BOOK VARCHAR(30),
FOREIGN KEY  (ISSUED_CUST) REFERENCES CUSTOMER(Customer_ID),
FOREIGN KEY (ISBN_BOOK) REFERENCES BOOKS(ISBN)
)

INSERT INTO ISSUE_STATUS (ISSUE_ID, ISSUED_CUST, ISSUED_BOOK_NAME, ISSUE_DATE, ISBN_BOOK)
VALUES
(1, 1, 'Intro SQL', '2024-01-05', '978-0-123456-00-1'),
(2, 2, 'Python Basics', '2024-01-10', '978-0-123456-00-2'),
(3, 3, 'Data Sci Essentials', '2024-02-15', '978-0-123456-00-3'),
(4, 4, 'Web Dev Fundamentals', '2024-02-20', '978-0-123456-00-4'),
(5, 5, 'Network Security Principles', '2024-03-25', '978-0-123456-00-5'),
(6, 6, 'ML Mastery', '2024-03-30', '978-0-123456-00-6'),
(7, 7, 'DB Design Mgmt', '2024-04-05', '978-0-123456-00-7'),
(8, 8, 'Digital Mktg Strategies', '2024-04-10', '978-0-123456-00-8'),
(9, 9, 'Financial Mgmt Techniques', '2024-05-15', '978-0-123456-00-9'),
(10, 10, 'Proj Mgmt Principles', '2024-05-20', '978-0-123456-01-0'),
(11, 11, 'Java Prog Adv Topics', '2024-06-25', '978-0-123456-01-1'),
(12, 12, 'Cust Service Excellence', '2024-06-30', '978-0-123456-01-2'),
(13, 13, 'Financial Analysis Reporting', '2024-07-05', '978-0-123456-01-3'),
(14, 14, 'SM Mktg Strategies', '2024-07-10', '978-0-123456-01-4'),
(15, 15, 'Linux Sys Administration', '2024-08-15', '978-0-123456-01-5'),
(16, 16, 'Sales Techniques Negotiation', '2024-08-20', '978-0-123456-01-6'),
(17, 17, 'Accounting Principles', '2024-09-25', '978-0-123456-01-7'),
(18, 18, 'HR Management', '2024-09-30', '978-0-123456-01-8'),
(19, 19, 'Cybersecurity Essentials', '2024-10-05', '978-0-123456-01-9'),
(20, 20, 'Cloud Computing Basics', '2024-10-10', '978-0-123456-02-0');



SELECT * FROM RETURN_STATUS

-- 1. Retrieve the book title, category, and rental price of all available
-- books

SELECT Book_title, Category, Rental_Price FROM BOOKS WHERE Status_of_books ='Yes'

-- 2. List the employee names and their respective salaries in descending
-- order of salary.

SELECT Emp_ID, Salary FROM Employee ORDER BY SALARY DESC

-- 3. Retrieve the book titles and the corresponding customers who have
-- issued those books


SELECT
Issued_book_name,
Customer_name
FROM
Issue_Status
LEFT JOIN
Customer
ON
Issue_Status.Issued_cust = Customer.Customer_ID

-- 4.Display the total count of books in each category.

SELECT Category, COUNT(*) AS TOTAL_BOOKS FROM Books GROUP BY Category

-- 5. Retrieve the employee names and their positions for the employees
-- whose salaries are above Rs.50,000.

SELECT Emp_Name, Position, Salary FROM Employee Where Salary > 50000

-- 6. List the customer names who registered before 2022-01-01 and have
-- not issued any books yet.
SELECT
Customer.Customer_Name
FROM
Customer
LEFT JOIN
Issue_Status
ON
Customer.Customer_Id = Issue_Status.Issue_Id
WHERE
Customer.Reg_date < '2022-01-01' AND Issue_Status.Issued_cust IS NULL


-- 7. Display the branch numbers and the total count of employees in each
-- branch.

SELECT
Branch.Branch_no,
Count(*) AS Total_Employees
FROM
Employee
INNER JOIN
Branch
ON
Employee.Branch_no = Branch.Branch_no
Group by Branch.Branch_no

-- 8. Display the names of customers who have issued books in the month
-- of June 2023.

SELECT
Customer.Customer_name
FROM
Issue_Status
LEFT JOIN
Customer
ON Issue_Status.Issued_cust = Customer.Customer_ID
WHERE
YEAR (Issue_Status.ISSUE_DATE) = '2022'
AND
MONTH (Issue_Status.ISSUE_DATE) = '6'

-- 9. Retrieve book_title from book table containing history.

SELECT Book_Title FROM BOOKS WHERE Category = 'History'

-- 10.Retrieve the branch numbers along with the count of employees for branches
-- having more than 5 employees.


SELECT
    Branch.Branch_no,
    COUNT(*) AS Total_Employees
FROM
    Employee
INNER JOIN
    Branch
ON
    Employee.Branch_no = Branch.Branch_no
GROUP BY
    Branch.Branch_no
HAVING
    Total_Employees > 5;

