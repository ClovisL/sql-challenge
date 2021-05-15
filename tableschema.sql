-- Drop table if it exists
DROP SCHEMA public CASCADE;
CREATE SCHEMA public;

-- Create departments table
CREATE TABLE departments(
	dept_no VARCHAR(20) PRIMARY KEY,
	dept_name VARCHAR(20)
);

-- Create employees table
CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(20),
	birth_date DATE,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	sex CHAR(1),
	hire_date DATE
);

-- Create salaries table
CREATE TABLE salaries(
	emp_no INT PRIMARY KEY,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create department employees table
CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR(5),
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create department manager table
CREATE TABLE dept_manager(
	dept_no VARCHAR(5),
	emp_no INT,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create titles table
CREATE TABLE titles(
	title_id VARCHAR(20) PRIMARY KEY,
	title VARCHAR(20)
);

-- Commands to look at the tables for ease when coding
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM titles;

