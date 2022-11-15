---checking the tables after import using select
select * from titles;
select * from employee_details;
select * from salaries;
select * from departments;
select * from dept_emp;
select * from dept_manager;


--List the employee number, last name, first name, sex, and salary of each employee

select ed.emp_no, ed.last_name,ed.first_name, ed.sex, s.salary
from employee_details as ed
left join salaries as s
on ed.emp_no = s.emp_no
order by emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.

select first_name, last_name, hire_date from employee_details
where DATE_PART('year',hire_date) = 1986
order by emp_no;

--List the manager of each department along with their department number, 
--department name, employee number, last name, and first name.

select dem.dept_no, dem.emp_no, d.dept_name, ed.last_name, ed.first_name from dept_manager as dem
left join departments as d on dem.dept_no = d.dept_no
left join employee_details as ed on dem.emp_no=ed.emp_no order by emp_no; 

--List the department number for each employee along with that employee’s employee number, 
--last name, first name, and department name.
select de.dept_no, de.emp_no, ed.last_name, ed.first_name, d.dept_name from dept_emp as de
left join employee_details as ed on de.emp_no = ed.emp_no
left join departments as d on de.dept_no = d.dept_no order by emp_no;


--List first name, last name, and sex of each employee whose first name is Hercules 
--and whose last name begins with the letter B.
select last_name, first_name, sex from employee_details 
where first_name = 'Hercules' and last_name like 'B%';

--List each employee in the Sales department,
--including their employee number, last name, and first name.
select de.emp_no, ed.last_name, ed.first_name, d.dept_name from dept_emp as de
left join employee_details as ed on de.emp_no = ed.emp_no
left join departments as d on de.dept_no = d.dept_no
where d.dept_name = 'Sales';


--List each employee in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
select de.emp_no, ed.last_name, ed.first_name, d.dept_name from dept_emp as de
left join employee_details as ed on de.emp_no = ed.emp_no
left join departments as d on de.dept_no = d.dept_no
where d.dept_name in ('Sales', 'Development');

--List the frequency counts, in descending order, of all the employee last names
--(that is, how many employees share each last name)
select employee_details.last_name, count(*) as freq_counts from employee_details
group by employee_details.last_name order by freq_counts;


--list the emp_no, emp_tilte from employee_details and salary form salaries
--title from the titles table
--export as .csv for bonus task
select ed.emp_no, ed.emp_title, s.salary, t.title from employee_details as ed
left join salaries as s on ed.emp_no = s.emp_no
left join titles as t on ed.emp_title = title_id;

--create table to stoe
create table emp_sal (
 emp_no  int,
 emp_title varchar,
 salary  int,
 title varchar);

drop table if exists emp_sal;

select * from emp_sal;
