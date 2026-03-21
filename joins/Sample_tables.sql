-- Create sample tables
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary DECIMAL(10,2)
);

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

CREATE TABLE projects (
    proj_id INT PRIMARY KEY,
    proj_name VARCHAR(50),
    emp_id INT
);

-- Insert sample data
INSERT INTO employees VALUES 
(1, 'John Doe', 101, 50000),
(2, 'Jane Smith', 102, 60000),
(3, 'Bob Johnson', 101, 55000),
(4, 'Alice Brown', 103, 65000),
(5, 'Charlie Wilson', NULL, 48000);

INSERT INTO departments VALUES 
(101, 'IT', 'New York'),
(102, 'HR', 'London'),
(103, 'Finance', 'Tokyo'),
(104, 'Marketing', 'Paris');

INSERT INTO projects VALUES 
(1, 'Project Alpha', 1),
(2, 'Project Beta', 2),
(3, 'Project Gamma', 4),
(4, 'Project Delta', NULL);
