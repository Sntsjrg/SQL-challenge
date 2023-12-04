Create Table departments (
	dept_no VARCHAR (255),
	dept_name VARCHAR (255)
);

Create Table dept_emp (
	emp_no INT,
	dept_no VARCHAR
);

Create Table dept_manager (
	dept_no VARCHAR,
	emp_no INT
);

Create Table employees (
	emp_no INT,
	emp_title_id VARCHAR (255),
	birth_date DATE NOT NULL,
	first_name VARCHAR (255),
	last_name VARCHAR (255),
	sex VARCHAR (5),
	hire_date DATE NOT NULL	
);

Create Table salaries (
	emp_no INT,
	salary INT
);

Create Table titles (
	tilte_id VARCHAR (255),
	title VARCHAR (255)
);