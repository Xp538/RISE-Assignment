create table Employee
( EmployeeID INT,
Name Varchar(20),
Department Varchar(20),
Salary Money,
Bonus Decimal(10,2),
Experience INT,
City Varchar(20))

select * from Employee

insert into employee values
(1,'Sujal','AI',60000,null,2,'Vadodara')

insert into employee values
(2,'Dhruv','IT',30000,null,6,'Vadodara')

insert into employee values 
(3,'Harsh','QA',45000,null,4,'Delhi'),
(4,'Omkar','IT',25000,null,3,'Mumbai'

insert into employee values 
(4,'Ashwini','Admin',100000,null,4,'Vadodara')

update employee
set employeeid = 5
where name = 'Ashwini'

update employee
set bonus = 5000
where department = 'IT'

update employee
set bonus = 7000
where department = 'Admin'

-- 1. Write a query to display all employees whose salary is greater than 50,000.
select * from Employee 
where Salary > 50000

-- 2. Retrieve employees who work in the IT department and have more than 5 years of experience.
select * from employee
where Department = 'IT' AND Experience > 5

-- 3. Write a query to display employees whose salary is between 45,000 and 60,000.
select * from employee
where salary between 45000 AND 60000

-- 4. Display employees whose city is either Mumbai or Delhi.
select * from employee
where city IN ('Mumbai','Delhi') -- where city = 'Mumbai' OR city = 'Delhi'

-- 5. Write a query to display employee name along with their annual income
select Name as 'Name', (Salary * 12) as 'Annual income' from employee

-- 6. Find employees whose name starts with the letter 'A'.
select * from employee 
where name like 'A%'

-- 7. Find the highest salary among all employees.
select max(salary) from employee

-- 8. Find the total bonus paid to employees in the IT department.
select sum(bonus) from employee
where department = 'IT'

-- 9. Display the minimum and maximum experience of employees.
select min(experience) as 'Minimum experience', max(experience) as 'Maximum experience' from employee

-- 10.Count the number of employees in each department.
SELECT Department, COUNT(Department) as 'Employee Count' from employee
GROUP BY Department;
/*
select Count(department) as 'AI employees' from employee
where department = 'AI'
select Count(department) as 'QA employees' from employee
where department = 'QA'
select Count(department) as 'Admin employees' from employee
where department = 'Admin'
select Count(department) as 'IT employees' from employee
where department = 'IT'
*/

-- 11. Find the total bonus paid to employees in the IT department.
select sum(Bonus) as 'TotalITdepBonus' from employee
where Department = 'IT'

-- 12. Write an SQL statement to add a new column named Email of type VARCHAR(100) to the Employees table.
alter table employee
add Email varchar(100) 

-- 13. Write an SQL statement to modify the Salary column so that it becomes DECIMAL(10,2).
alter table employee
alter column salary decimal(10,2)

-- sp_help employee

-- 14. Write an SQL statement to drop the Bonus column from the Employees table.
alter table employee
drop column bonus

select * from employee

