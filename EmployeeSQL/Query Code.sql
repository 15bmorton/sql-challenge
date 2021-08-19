select *
from departments;

select *
from salaries;

select *
from department_employees;

select *
from manager_employees;

select *
from employee_info;

select *
from titles;

select s.employee_id, e.last_name, e.first_name, e.sex, s.salary
from employee_info e
inner join salaries s
	on s.employee_id = e.employee_id
	order by s.employee_id;


select first_name, last_name, hire_date
from employee_info
where extract(year from hire_date) = 1986; 


select distinct on (manager_employees.department_id) manager_employees.department_id,
				   departments.department_name,
				   manager_employees.employee_id,
				   employee_info.last_name,
				   employee_info.first_name
from manager_employees
inner join departments
	on manager_employees.department_id = departments.department_id
inner join employee_info
	on manager_employees.employee_id = employee_info.employee_id;


select distinct on (department_employees.employee_id) department_employees.employee_id,
				   employee_info.last_name,
				   employee_info.first_name,
				   departments.department_name
from department_employees
inner join employee_info
	on department_employees.employee_id = employee_info.employee_id
inner join departments
	on department_employees.department_id = departments.department_id;


select employee_info.first_name, 
	   employee_info.last_name,
	   employee_info.sex
from employee_info
where employee_info.first_name= 'Hercules' and employee_info.last_name like 'B%';
	   

select distinct on (department_employees.employee_id) department_employees.employee_id,
					employee_info.last_name,
					employee_info.first_name,
					departments.department_name
from department_employees
inner join employee_info
	on department_employees.employee_id = employee_info.employee_id
inner join departments
	on department_employees.department_id = departments.department_id
where departments.department_name = 'Sales';
	   
	   
select distinct on (department_employees.employee_id) department_employees.employee_id,
					employee_info.last_name,
					employee_info.first_name,
					departments.department_name
from department_employees
inner join employee_info
	on department_employees.employee_id = employee_info.employee_id
inner join departments
	on department_employees.department_id = departments.department_id
where departments.department_name = 'Sales' or departments.department_name = 'Development'; 


select employee_info.last_name, count(employee_info.last_name) as frequency
from employee_info
group by employee_info.last_name
order by frequency desc;
