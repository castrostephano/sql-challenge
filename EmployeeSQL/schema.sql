create table departments (
	dept_no varchar primary key,
	dept_name varchar not null

);

select * from departments;

create table titles (
	title_id varchar primary key,
	title varchar not null
);

select * from titles;

create table employees (
	emp_no int primary key,
	emp_title_id varchar, 
	foreign key (emp_title_id) references
	titles(title_id),
	birth_date date,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date date

);
select * from employees;

create table salaries (
	emp_no int ,
	foreign key (emp_no) references employees (emp_no),
	salary int,
	primary key (emp_no, salary)
);

select * from salaries;

create table department_employees (
	emp_no int ,
	foreign key (emp_no)references employees (emp_no),
	dept_no varchar, 
	foreign key (dept_no) references departments (dept_no),
	primary key (emp_no, dept_no)

);

select * from department_employees;


create table department_manager (
	dept_no varchar,
	foreign key (dept_no) references departments (dept_no),
	emp_no int,
	foreign key (emp_no)references employees (emp_no),
	primary key (emp_no, dept_no)

);


select * from department_manager;