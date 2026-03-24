CREATE TABLE employees (
id INT PRIMARY KEY,
name VARCHAR(50),
salary INT,
dept_id INT,
manager_id INT
);

CREATE TABLE departments (
id INT PRIMARY KEY,
dept_name VARCHAR(50)
);