--Question 1
select employees.emp_no, last_name, first_name, gender, salaries.salary from employees inner join salaries on employees.emp_no=salaries.emp_no;  
--Question 2
select first_name, last_name, hire from employees where (EXTRACT(year FROM hire)) in (1986);   
--Question 3
select a.dept_no, a.dept_name, b.emp_no, c.last_name, c.first_name, d.title, d.from_date, d.to_date from departments a, dept_emp  b, employees c, titles d where a.dept_no=b.dept_no and b.emp_no=c.emp_no and c.emp_no=d.emp_no and d.title ='Manager';  
--Question 4
select  b.emp_no, c.last_name, c.first_name, a.dept_name from departments a, dept_emp  b, employees c where a.dept_no=b.dept_no and b.emp_no=c.emp_no;  
--Question 5
select first_name, last_name from employees where first_name = 'Hercules' and last_name LIKE 'B%';
--Question 6
select b.emp_no, c.last_name, c.first_name, a.dept_name from departments a, dept_emp  b, employees c where a.dept_no=b.dept_no and b.emp_no=c.emp_no and a.dept_name ='Sales';
--Question 7
select b.emp_no, c.last_name, c.first_name, a.dept_name from departments a, dept_emp  b, employees c where a.dept_no=b.dept_no and b.emp_no=c.emp_no and a.dept_name in ('Sales','Development');
--Question 8
select last_name, count(last_name) as "last_name count" from employees group by last_name order by "last_name count" desc;

