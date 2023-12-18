Departments
-----------
dept_no VARCHAR(255) PK
dpt_name VARCHAR(255)

Dept_Emp
--------
emp_no INT FK >- Employees.emp_no
dept_no VARCHAR(255) FK >- Departments.dept_no

Dept_Manager
------------
dept_no VARCHAR(255) FK >- Departments.dept_no
emp_no INT FK >- Employees.emp_no

Employees
---------
emp_no INT PK
emp_title_id VARCHAR(255) FK >- Titles.title_id
birth_date DATENOTNULL
first_name VARCHAR(255)
last_name VARCHAR(255)
sex VARCHAR(5)
hire_date DATENOTNULL

Salaries
--------
emp_no INT FK >- Employees.emp_no
salary INT

Titles
------
title_id VARCHAR(255) PK
title VARCHAR(255)

