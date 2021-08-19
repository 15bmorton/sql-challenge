create table departments(
department_id varchar(8) primary key not null,
department_name varchar(25) not null
);

create table department_employees(
employee_id int not null,
department_id varchar(4) not null,
foreign key(employee_id) references salaries(employee_id),
foreign key (department_id) references departments (department_id)
);

create table manager_employees(
department_id varchar(4),
employee_id int not null,
foreign key(employee_id) references salaries(employee_id),
foreign key (department_id) references departments (department_id)
);

create table employee_info(
employee_id int not null,
employee_title_id varchar(10) not null,
birth_date date not null,
first_name varchar(30) not null,
last_name varchar(30) not null,
sex varchar(1) not null,
hire_date date not null,
foreign key(employee_id) references salaries(employee_id)
);

create table salaries(
employee_id int primary key not null,
salary int not null
);

create table titles(
employee_title_id varchar(10) not null,
title varchar(25) not null
);

select *
from departments

select *
from salaries

select *
from department_employees

select *
from manager_employees

select *
from employee_info

select *
from titles