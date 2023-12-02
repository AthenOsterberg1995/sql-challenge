#QUICK DBD code
# Modify this code to update the DB schema diagram.
# To reset the sample schema, replace everything with
# two dots ('..' - without quotes).

departments
-
dept_no PK VARCHAR(30)
dept_name VARCHAR(30)

titles
-
title_id VARCHAR(30) PK 
title VARCHAR(30)

employees
-
emp_no INT PK
emp_title_id VARCHAR(30) FK >- titles.title_id
birth_date DATE
first_name VARCHAR(30)
last_name VARCHAR(30)
sex VARCHAR(30)
hire_date DATE

dept_emp
-
emp_no int PK FK - employees.emp_no
dept_no VARCHAR(30) PK FK >- departments.dept_no

dept_manager
-
dept_no VARCHAR(30) FK >- departments.dept_no
emp_no PK INT FK -0 employees.emp_no

salaries
-
emp_no INT PK FK - employees.emp_no 
salary INT

