Select first_name, last_name, sex, salary
From employees
Join salaries on employees.emp_no = salaries.emp_no;

Select first_name, last_name, hire_date
From employees 
WHERE extract(year from hire_date) = 1986;

Select dm.emp_no AS manager_emp_no, dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
From dept_manager dm
Join departments d ON dm.dept_no = d.dept_no
Join employees e ON dm.emp_no = e.emp_no;

Select de.emp_no, de.dept_no, e.last_name, e.first_name, d.dept_name
From dept_emp de
Join employees e ON de.emp_no = e.emp_no
Join departments d ON de.dept_no = d.dept_no;

Select first_name, last_name, sex
From employees
Where first_name = 'Hercules' AND last_name LIKE 'B%';

Select e.emp_no, e.last_name, e.first_name
From employees e
Join dept_emp de ON e.emp_no = de.emp_no
Join departments d ON de.dept_no = d.dept_no
Where d.dept_name = 'Sales';

Select e.emp_no, e.last_name, e.first_name, d.dept_name
From employees e
Join dept_emp de ON e.emp_no = de.emp_no
Join departments d ON de.dept_no = d.dept_no
Where d.dept_name IN ('Sales', 'Development');

Select last_name, COUNT(*) as frequency
From employees
Group By last_name
Order By frequency DESC;