select t.title as "Title", count(e.birth_date) as "Count" from titles t
inner join employees e on e.emp_no = t.emp_no where e.birth_date > "1965-01-01"
group by t.title;

select t.title as "Title", avg(s.salary) as "Average Salary" from titles t
inner join employees e on e.emp_no = t.emp_no
inner join salaries s on s.emp_no = t.emp_no
group by t.title;

select d.dept_name as "Departmnet", sum(s.salary) as "Total Salary" from departments d 
inner join dept_emp de on de.dept_no = d.dept_no
inner join employees e on e.emp_no = de.emp_no
inner join salaries s on s.emp_no = de.emp_no where d.dept_name = "Marketing" and s.from_date between "1990-01-01" and "1992-01-01";