
-- 1. Create a database named CompanyDB.
create database Company_DB

-- 2. Use the CompanyDB database and create the Employee table with all the columns
-- mentioned above.
create table Employee 
(EmpID INT primary key,
FirstName varchar(20),
LastName varchar(20),
Department varchar(20),
Designation varchar(20),
Salary Decimal(10,2),
City varchar(20),
Gender char(1),
Joining_Date Date,
Age INT)

alter table employee
alter column Designation varchar(40)

alter table employee
alter column Department varchar(40)


-- 3. Add a new column Email to the Employee table.
alter table employee
add Email varchar(20)

select * from employee

-- 4. Modify the Email column to increase its size.
alter table employee
alter column Email varchar(30)

sp_help employee

-- 5. Rename the column City to Location.
sp_rename 'employee.City', 'Location'
select * from employee

-- 6. Rename the table Employee to EmployeeDetails and then rename it back to
-- Employee.
sp_rename 'Employee', 'EmployeeDetails'
select * from employeedetails

sp_rename 'EmployeeDetails', 'Employee'
select * from employee

-- 7. Drop the Email column from the Employee table.
alter table employee
drop column email

select * from employee

-- 8. Write a query to check the structure (columns and data types) of the Employee
-- table.
sp_help employee

-- 9. Make EmpID column the Primary Key of the Employee table.
alter table employee
add constraint Primary_key_EmpID Primary key(EmpID)

-- 10. Add a NOT NULL constraint on the FirstName column.
alter table employee 
alter column FirstName varchar(20) NOT NULL;

sp_help employee

-- 11. Add a UNIQUE constraint on the column to ensure no two employees have the
-- same email (create a new column Email and apply the constraint).
alter table employee
add Email varchar(30) unique

sp_help employee

-- 12. Add a DEFAULT constraint on the Department column so that if no value is
-- provided, it should be set as 'General'.
alter table employee
add constraint Default_Department Default 'General' FOR Department

-- 13. Add a CHECK constraint on the Salary column so that salary cannot be less than
-- 10,000
alter table employee
add constraint Check_for_salary Check(salary < 10000)

-- 14. Add a CHECK constraint on the Age column so that age must be between 18 and 60.
alter table employee
add constraint Check_for_Age Check(Age between 18 and 60)

-- 15. Remove the CHECK constraint applied on the Salary column.
alter table employee
Drop constraint Check_for_salary 

-- 16. Add a FOREIGN KEY unrelated simple self-constraint task: add a Manager_EmpID
-- column and apply a CHECK constraint so it cannot be equal to EmpID itself.
 

-- 17. Insert 15 records into the Employee table with different departments, cities, and
-- salaries.
insert into employee values
(1,'Rahul','Sharma','AI','AI Engineer',75000,'Ahmedabad','M','2022-01-15',25,'rahul.sharma@gmail.com'),

(2,'Priya','Patel','QA','QA Engineer',45000,'Vadodara','F','2021-06-20',28,'priya.patel@gmail.com'),

(3,'Amit','Verma','Cloud','Cloud Engineer',80000,'Surat','M','2020-09-10',30,'amit.verma@gmail.com'),

(4,'Neha','Joshi','Business Analyst','Business Analyst',65000,'Rajkot','F','2023-02-12',24,'neha.joshi@gmail.com'),

(5,'Karan','Mehta','DevOps','DevOps Engineer',90000,'Ahmedabad','M','2019-11-05',32,'karan.mehta@gmail.com'),

(6,'Sneha','Desai','HR','HR Executive',40000,'Vadodara','F','2022-07-18',27,'sneha.desai@gmail.com'),

(7,'Rohit','Singh','Data Engineering','Data Engineer',85000,'Surat','M','2021-04-22',29,'rohit.singh@gmail.com'),

(8,'Anjali','Shah','AI','Senior AI Engineer',120000,'Ahmedabad','F','2018-12-01',34,'anjali.shah@gmail.com'),

(9,'Vikas','Yadav','QA','QA Lead',70000,'Rajkot','M','2017-05-30',38,'vikas.yadav@gmail.com'),

(10,'Pooja','Trivedi','Full Stack','Full Stack Developer',85000,'Vadodara','F','2020-08-14',31,'pooja.trivedi@gmail.com'),

(11,'Arjun','Patel','Cloud','Cloud Architect',140000,'Ahmedabad','M','2019-10-25',35,'arjun.patel@gmail.com'),

(12,'Riya','Kapoor','UI/UX','UI/UX Designer',60000,'Surat','F','2023-01-09',26,'riya.kapoor@gmail.com'),

(13,'Manish','Gupta','Finance','Financial Analyst',55000,'Rajkot','M','2021-09-17',29,'manish.gupta@gmail.com'),

(14,'Kavya','Iyer','Data Analytics','Data Analyst',70000,'Ahmedabad','F','2022-05-11',25,'kavya.iyer@gmail.com'),

(15,'Suresh','Nair','DevOps','Senior DevOps Engineer',130000,'Vadodara','M','2016-03-08',40,'suresh.nair@gmail.com')

select * from employee

-- 18. Insert a new employee record without specifying the Department (to check the
-- DEFAULT constraint).
insert into employee (empid,firstname,lastname,designation,Salary,Location,Gender,Joining_Date,age,Email) values
(16,'Rupali','Desai','Full Stack Developer',60000,'Rajkot','F','2020-05-17',26,'rupali.desai@gmail.com')

select * from employee

-- 19.Update the salary of all employees working in the IT department by increasing it by
-- 10%.
update employee
set salary = salary * 1.10
where department = 'IT'

-- 20.Update the Designation of an employee whose EmpID is 5 to 'Senior Executive'.
update employee
set designation = 'Senior Executive'
where empid = 5

select * from employee

-- 21.Delete the record of an employee whose EmpID is 10.
delete employee
where empid = 10

select * from employee

-- 22.Delete all employees whose Salary is less than 15,000.
delete employee
where salary < 15000

-- 23.Update the City of all employees from 'Mumbai' to 'Pune'.
update employee
set Location = 'Pune'
where location = 'Mumbai'

-- 24. Insert a record and intentionally leave FirstName blank to check if the NOT NULL
-- constraint blocks it.
insert into employee values
(17,NULL,'Panchal','AI', 'Machine Learning Engineer', 95000, 'Gandhinagar', 'M', '2024-02-15', 27, 'nikhil.panchal@gmail.com')

select * from employee

-- 25. Write a query to display all the records from the Employee table.
select * from Employee

-- 26. Write a query to display FirstName, LastName, and Salary of all employees.
select Firstname,lastname,salary from employee

-- 27. Write a query to display the details of employees working in the 'HR' department.
select * from employee
where department = 'HR'

-- 28. Write a query to display all distinct Department names from the table.
select department from employee


-- 29. Write a query to display the total number of employees in the table.
select count(empid) as Total_employee from employee

-- 30. Write a query to display FirstName and Salary and rename the Salary column as
-- MonthlySalary using an alias.
select firstname, salary as MonthlySalary from employee

-- 31. Write a query to display all employee details whose Gender is 'F'.
select * from employee
where Gender = 'F'

-- 32. Write a query to display the top 5 highest paid employees.
select top 5 * from employee
order by salary DESC

select * from employee

-- 33.Display all employees whose Salary is greater than 30,000 (comparison operator).
select * from employee
where salary > 30000

-- 34.Display all employees whose Department is 'IT' AND Salary is greater than 25,000
-- (logical operator).
select * from employee
where Department = 'IT' AND salary > 25000

-- 35.Display all employees whose Department is 'HR' OR 'Finance'.
select * from employee
where department = 'HR' OR department = 'Finance'

-- -- 36.Display all employees whose Salary is BETWEEN 20,000 and 40,000.
select* from employee
where salary between 20000 and 40000

-- 37.Display all employees whose City IN ('Delhi', 'Mumbai', 'Pune').
select * from employee
where location IN ('Delhi', 'Mumbai', 'Pune')

-- 38.Display all employees whose FirstName LIKE starts with 'A'.
select * FROM employee
where Firstname LIKE 'a%'

-- 39.Display all employees whose FirstName LIKE ends with 'a'.
select * FROM employee
where Firstname LIKE '%a'

-- 40.Display all employees whose Department is NOT 'Sales' (NOT operator).
select * FROM employee
where department <> 'Sales'

-- 41.Display the total number of employees in each department.
select department, count(empid) from employee
group by department

select * from employee

-- 42.Display the average salary of employees department-wise.
select department, avg(salary) from employee
group by department
order by avg(salary) DESC

-- 43.Display the maximum salary in each department.
select department, max(salary) as Maximum_salary from employee
group by department 

-- 44.Display the minimum salary city-wise.
select Location, min(salary) as Minimum_salary from employee
group by Location

-- 45.Display the total salary paid, grouped by Designation.
select designation, sum(salary) as Total_salary_paid from employee
group by designation

-- 46.Display departments having more than 3 employees.
select department, count(empid) as Employee_count from employee
group by department
having count(empid) >= 3

-- 47.Display departments whose average salary is greater than 30,000.
select department, avg(salary) as Average_salary from employee
group by department
having avg(salary) > 30000

-- 48.Display cities having a total employee count greater than 2.
select Location, count(empid) as Employee_count from employee
group by Location
having count(empid) > 2

-- 49.Display all employee records sorted by Salary in descending order.
select * from employee
order by salary DESC

-- 50.Display all employee records sorted by Department (ascending) and then by Salary
-- (descending).
select * from employee
order by Department ASC, Salary DESC

