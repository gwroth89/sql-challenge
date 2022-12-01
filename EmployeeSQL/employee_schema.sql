
--Process
--quick db
--create blank table with keys
--import csv (either via sql or ui)

CREATE TABLE Departments (
    dept_no INT,
    dept_name VARCHAR(50),
    PRIMARY KEY (dept_no)
);

CREATE TABLE Dept_Emp (
    emp_no INT,
    dept_no INT,
    PRIMARY KEY (dept_no)
);

CREATE TABLE Dept_Manager (
    dept_no INT,
    emp_no INT,
    PRIMARY KEY (dept_no)
);

CREATE TABLE titles (
    title_id INT,
    title VARCHAR(50),
	PRIMARY KEY (title_id)
);

CREATE TABLE employees (
    emp_no INT,
    emp_title_id INT,
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex VARCHAR(50),
    hire_date DATE,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE salaries (
    emp_no INT,
    salary INT,
	PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);