-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
select employees.emp_no, last_name, first_name, sex, salary
from employees
join salaries
on employees.emp_no = salaries.emp_no 

-- 2. List first name, last name, and hire date for employees who were hired in 1986.

select first_name, last_name, hire_date
from employees
where hire_date Between '12/31/1985' and '1/1/1987'; 

-- $sql="SELECT * FROM table WHERE `date` BETWEEN '$year-01-01' AND '$year-12-31'"  -stackoverflow

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
-- Activity 2.08 
Select m.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name 
From employees As e
Join dept_manager As m
On (e.emp_no = m.emp_no)
	Join departments As d
	On (m.dept_no = d.dept_no);
	
-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

Select e.emp_no, e.last_name, e.first_name, d.dept_name 
From employees As e
Join dept_emp As de
On (e.emp_no = de.emp_no)
	Join departments As d
	On (de.dept_no = d.dept_no);
-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
