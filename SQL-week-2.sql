select t.title as "Title", count(e.birth_date) as "Count" from titles t
inner join employees e on e.emp_no = t.emp_no where e.birth_date > "1965-01-01"
group by t.title;

select t.title as "Title", avg(s.salary) as "Average Salary" from titles t
inner join employees e on e.emp_no = t.emp_no
inner join salaries s on s.emp_no = t.emp_no
group by t.title;

select d.dept_name as "Departmnet", sum(s.salary) as "Total Salary" from departments d 
inner join dept_emp de on de.dept_no = d.dept_no
inner join salaries s on s.emp_no = de.emp_no where d.dept_name = "Marketing" and s.from_date between "1990-01-01" and "1992-12-31";

SELECT SUM(salaries.salary) AS "Total Spent" FROM salaries 
INNER JOIN dept_emp ON dept_emp.emp_no = salaries.emp_no 
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no 
WHERE departments.dept_no = 'd001' 
AND (dept_emp.from_date <= '1992-12-31' AND dept_emp.to_date >= '1990-01-01' 
AND salaries.from_date <= '1992-12-31' AND salaries.to_date >= '1990-01-01');

select * from dept_emp limit 25;
select * from salaries s  limit 25;
select * from departments d limit 25;

select c.last_name as "Last Name", a.state as "State", a.zip as "Zip" from customers c
inner join addresses a on a.customer_id = c.customer_id;

select c.state as "State", sum(c.total_money_spent) as "Total Money Spent" from customers c
group by c.state;