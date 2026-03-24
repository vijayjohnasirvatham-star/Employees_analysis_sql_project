Employee Data Analysis using SQL

📌 Project Overview

This project demonstrates SQL-based data analysis using an employee management dataset.
It focuses on querying relational data to extract meaningful business insights.

---

🗂️ Database Schema

Tables Used

employees

- id (Primary Key)
- name
- salary
- dept_id (Foreign Key)
- manager_id (Self-referencing key)

departments

- id (Primary Key)
- dept_name

---

🔗 Relationships

- Each employee belongs to a department ("dept_id → departments.id")
- Each employee may have a manager ("manager_id → employees.id")

---

📊 SQL Concepts Covered

- SELECT & WHERE
- INNER JOIN & LEFT JOIN
- GROUP BY & HAVING
- Aggregate Functions (COUNT, SUM, AVG, MAX)
- Subqueries
- Window Functions (RANK, DENSE_RANK)
- Self Join
- Filtering & Sorting

---

📈 Analysis Performed

Basic Queries

- List all employees and departments
- Filter employees based on salary

Join Operations

- Employees with department names
- Employees without departments
- Employees with their managers

Aggregations

- Average salary per department
- Total salary per department
- Employee count per department

Advanced Queries

- Department with highest employees
- Employees earning above/below average salary
- Second highest salary using DENSE_RANK
- Top 3 highest salaries
- Rank employees by salary

Business Insights

- Employees earning more than their managers
- Managers and their team size
- Departments with more than one employee
- Highest salary in each department

---

📁 Project Files

- "schema.sql" → Table creation scripts
- "insert_data.sql" → Sample data insertion
- "analysis_queries.sql" → SQL queries (20 queries)
- "README.md" → Project documentation

---

🧠 Key Learnings

- Understanding relational database design
- Writing efficient SQL queries
- Handling real-world data scenarios
- Using advanced SQL concepts for analysis

---

📎 Future Improvements

- Add more tables (projects, attendance)
- Use larger datasets
- Integrate with visualization tools (Power BI)

---

👤 Author

Vijay J
