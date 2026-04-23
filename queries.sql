-- 1. View all employees
SELECT * FROM employees;

-- 2. Employees with department names (JOIN)
SELECT e.emp_name, d.dept_name, e.salary
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id;

-- 3. Average salary per department
SELECT d.dept_name, AVG(e.salary) AS avg_salary
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

-- 4. Highest paid employee
SELECT emp_name, salary
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);

-- 5. Employees earning above average salary
SELECT emp_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- 6. Count employees per department
SELECT d.dept_name, COUNT(*) AS total_employees
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

-- 7. Order employees by salary descending
SELECT emp_name, salary
FROM employees
ORDER BY salary DESC;
