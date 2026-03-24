Query - 1 List all emplyees

SELECT *
FROM employees;

Query - 2 List all departments

SELECT *
FROM departments;

Query - 3 employees with dept name

SELECT e.name, d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.id;

Query - 4 employee without dept

SELECT name
FROM employees
WHERE dept_id IS NULL;

Query - 5 Avg salary per dept

SELECT d.dept_name, AVG(e.salary) AS avg_salary
FROM employees e
JOIN departments d
ON e.dept_id = d.id
GROUP BY d.dept_name;

Query - 6 Total salary per dept

SELECT d.dept_name, SUM(e.salary) AS total_salary
FROM employees e
JOIN departments d
ON e.dept_id = d.id
GROUP BY d.dept_name;

Query - 7 No of employees per dept

SELECT d.dept_name, COUNT(e.id) AS employee_count
FROM employees e
JOIN departments d
ON e.dept_id = d.id
GROUP BY d.dept_name;

Query - 8 dept with most employees

SELECT d.dept_name, COUNT(e.id) AS employee_count
FROM employees e
JOIN departments d
ON e.dept_id = d.id
GROUP BY d.dept_name
ORDER BY employee_count DESC
LIMIT 1;

Query - 9 Highest paid employees

SELECT name, salary
FROM employees
ORDER BY salary DESC
LIMIT 1;

Query - 10 Employees earning above avg salary

SELECT name, salary
FROM employees
WHERE salary > (
SELECT AVG(salary)
FROM employees
);

Query - 11 Employees earning below avg salary

SELECT name, salary
FROM employees
WHERE salary < (
SELECT AVG(salary)
FROM employees
);

Query - 12 Second highest salary

SELECT salary
FROM (
SELECT salary,
DENSE_RANK() OVER(ORDER BY salary DESC) AS rank_no
FROM employees
) t
WHERE rank_no = 2;

Query - 13 Top 3 highest salaries

SELECT name, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;

Query - 14 Rank employees by salary

SELECT name, salary,
RANK() OVER(ORDER BY salary DESC) AS salary_rank
FROM employees;

Query - 15 Employees with their managers

SELECT e.name AS employee, m.name AS manager
FROM employees e
JOIN employees m
ON e.manager_id = m.id;

Query - 16 Employees earning more than their managers

SELECT e.name, e.salary, m.name AS manager
FROM employees e
JOIN employees m
ON e.manager_id = m.id
WHERE e.salary > m.salary;

Query - 17 Count employeed wuthout dept

SELECT COUNT(*) AS employees_without_department
FROM employees
WHERE dept_id IS NULL;

Query - 18 Managers and no of emp they manage

SELECT m.name AS manager, COUNT(e.id) AS team_size
FROM employees e
JOIN employees m
ON e.manager_id = m.id
GROUP BY m.name;

Query - 19 Emp working in IT company

SELECT e.name, e.salary
FROM employees e
JOIN departments d
ON e.dept_id = d.id
WHERE d.dept_name = 'IT';

Query - 20 Highest salary in each dept

SELECT d.dept_name, MAX(e.salary) AS highest_salary
FROM employees e
JOIN departments d
ON e.dept_id = d.id
GROUP BY d.dept_name;
