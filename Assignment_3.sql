select * from employee

insert into employee values
(6,'Raju','IT',50000,5,'Chennai',null)

insert into employee values
(7,'kaju','AI',50000,3,'Hydrabad',null)

-- 1. Write a query to display each Department and the total number of employees 
-- working in that department from the Employee table.

select department, Count(*) from employee
group by department

-- 2. Write a query to find the Department, the highest salary (MAX), and the
-- average salary (AVG) for each department.

select department, max(salary) as Highest_salary, avg(salary) as Average_salary from employee
group by department

select * from employee

-- 3. Write a query to count how many employees are in each Department

select department, count(employeeid) as Count_of_employee from employee -- count(*) also work it checks all rows		
group by department

-- 4. Write a query to find the minimum salary in each Department

select department, min(salary) as minimum_salary from employee
group by department

select * from employee

-- 5. Write a query to show departments that have more than 2 employees

select department, count(employeeid) as employee_count from employee
group by department
having count(employeeid) > 2

-- 6. Write a query to show departments where the total salary payout is greater
-- than 100,000

select department, sum(salary) as Total_salary from employee
group by department
having sum(salary) > 100000

-- 7. Write a query to find departments where the average salary is above 60,000

select department, avg(salary) as Average_salary from employee
group by department
having avg(salary) > 60000

select * from employee

-- 8. Write a query to show departments that have exactly 1 employee

select department, count(department) as employee_count from employee
group by department
having count(department) = 1

select * from employee

-- 9. Write a query to list all employees sorted by Salary from highest to lowest

select name,salary from employee
order by salary DESC

-- 10.Write a query to list all employees sorted by Ename in alphabetical order

select name from employee
order by name ASC

-- 11.Write a query to list all employees sorted by Department alphabetically, and
-- then by Ename alphabetically.

select department,name from employee
order by department, name


