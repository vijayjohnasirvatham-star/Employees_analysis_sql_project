Query 1: Attrition Analysis

Which departments have the highest attrition rate?

SELECT 
    department,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count,
    ROUND(SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) AS attrition_rate
FROM employees
GROUP BY department;


Query 2: Salary Distribution

How are employees distributed across salary ranges?

SELECT 
    CASE 
        WHEN salary < 50000 THEN 'Low'
        WHEN salary BETWEEN 50000 AND 70000 THEN 'Medium'
        ELSE 'High'
    END AS salary_range,
    COUNT(*) AS employee_count
FROM employees
GROUP BY salary_range;


Query 3: Department Performance

Which departments have the highest average salary?

SELECT 
    department,
    COUNT(*) AS total_employees,
    AVG(salary) AS avg_salary
FROM employees
GROUP BY department
ORDER BY avg_salary DESC;


Query 4:Experience vs Salary

How does experience impact salary?

SELECT 
    experience_years,
    AVG(salary) AS avg_salary
FROM employees
GROUP BY experience_years
ORDER BY experience_years;


Query 5: Gender Distribution

What is the gender distribution in the company?

SELECT 
    gender,
    COUNT(*) AS employee_count
FROM employees
GROUP BY gender;

query 6: Internal Compensation Ranking

Who are the top earners in each department?

SELECT 
    name, 
    department, 
    salary,
    RANK() OVER (PARTITION BY department ORDER BY salary DESC) as salary_rank
FROM employees;
