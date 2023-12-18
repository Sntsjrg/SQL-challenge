Create Table departments (
	dept_no VARCHAR (255) PK,
	dept_name VARCHAR (255)
);

Create Table dept_emp (
	emp_no INT FK >- Employees.emp_no,
	dept_no VARCHAR FK >- Departments.dept_no
);

Create Table dept_manager (
	dept_no VARCHAR FK >- Departments.dept_no,
	emp_no INT FK >- Employees.emp_no
);

Create Table employees (
	emp_no INT,
	emp_title_id VARCHAR (255) FK >- Titles.title_id,
	birth_date DATE NOT NULL,
	first_name VARCHAR (255),
	last_name VARCHAR (255),
	sex VARCHAR (5),
	hire_date DATE NOT NULL	
);

Create Table salaries (
	emp_no INT FK >- Employees.emp_no,
	salary INT
);

Create Table titles (
	tilte_id VARCHAR (255) PK,
	title VARCHAR (255)
);