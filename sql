-- Create Database
CREATE DATABASE IF NOT EXISTS EmployeeDB;

-- Use the created database
USE EmployeeDB;

-- Create a table for storing employee information
CREATE TABLE IF NOT EXISTS Employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    hire_date DATE,
    salary DECIMAL(10, 2) NOT NULL
);

-- Insert data into the Employees table
INSERT INTO Employees (first_name, last_name, email, hire_date, salary)
VALUES
('John', 'Doe', 'john.doe@example.com', '2021-01-15', 50000.00),
('Jane', 'Smith', 'jane.smith@example.com', '2020-06-12', 60000.00),
('Alice', 'Johnson', 'alice.johnson@example.com', '2022-03-05', 55000.00);

-- Query all employees
SELECT * FROM Employees;

-- Query employees with a salary greater than 55,000
SELECT * FROM Employees WHERE salary > 55000;

-- Update salary for a specific employee
UPDATE Employees
SET salary = 65000.00
WHERE employee_id = 2;

-- Delete an employee record
DELETE FROM Employees WHERE employee_id = 3;

-- Query all employees again to see the updates
SELECT * FROM Employees;
