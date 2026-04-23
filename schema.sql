-- Create Departments table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Create Employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- Insert into departments
INSERT INTO departments VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');

-- Insert into employees
INSERT INTO employees VALUES
(101, 'John', 1, 60000),
(102, 'Alice', 2, 50000),
(103, 'Bob', 1, 70000),
(104, 'David', 3, 65000),
(105, 'Eva', 2, 55000);
