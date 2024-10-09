CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL
);

-- Create Department Table
CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);

-- Create Salary Table (Allowing multiple entries for the same employee in different departments)
CREATE TABLE salary (
    emp_id INT NOT NULL,
    dept_id INT NOT NULL,
    salary NUMERIC(10, 2) NOT NULL,
    FOREIGN KEY (emp_id) REFERENCES employee (emp_id),
    FOREIGN KEY (dept_id) REFERENCES department (dept_id),
    PRIMARY KEY (emp_id, dept_id)
);

-- Insert into Employee Table
INSERT INTO employee (emp_id, emp_name) VALUES
(101, 'John Doe'),
(102, 'Alice Smith'),
(103, 'Bob Johnson'),
(104, 'Eve Davis'),
(105, 'Charlie Brown');

-- Insert into Department Table
INSERT INTO department (dept_id, dept_name) VALUES
(1, 'Engineering'),
(2, 'Human Resources'),
(3, 'Finance'),
(4, 'Marketing'),
(5, 'IT Support');

-- Insert multiple salary records per employee
INSERT INTO salary (emp_id, dept_id, salary) VALUES
-- John Doe in multiple departments
(101, 1, 95000.00),  -- John Doe, Engineering
(101, 3, 88000.00),  -- John Doe, Finance

-- Alice Smith in multiple departments
(102, 2, 62000.00),  -- Alice Smith, HR
(102, 4, 67000.00),  -- Alice Smith, Marketing

-- Bob Johnson in multiple departments
(103, 3, 78000.00),  -- Bob Johnson, Finance
(103, 5, 60000.00),  -- Bob Johnson, IT Support

-- Eve Davis in Marketing and Engineering
(104, 4, 70000.00),  -- Eve Davis, Marketing
(104, 1, 80000.00),  -- Eve Davis, Engineering

-- Charlie Brown in IT Support and HR
(105, 5, 58000.00),  -- Charlie Brown, IT Support
(105, 2, 61000.00);  -- Charlie Brown, HR