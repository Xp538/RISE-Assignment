-- Literal SELECT Statement Practice Problems --

-- 1) Execute a literal select statement that returns your name.
select 'Patel Sujal' as Namee

-- 2) Write the literal select statement that evaluates the product of 7 and 4.
select 7 * 4 as Multiplication

-- 3) Write the literal select statement that takes the difference of 7 and 4 then multiplies
-- that difference by 8.
select (7 - 4) * 8

-- 4) Write a literal select statement that returns the phrase “Brewster’s SQL Training
-- Class”. (Hint: note the single apostrophe in the string).
select '“Brewster’s SQL Training Class”.' as statement

-- 5) Execute a literal SELECT statement that returns the phrase “Day 1 of Training” in one
-- column and the result of 5*3 in another column.
select '“Day 1 of Training”' as statement, 5 * 3 as multiplication


-- extra work here
create table RSemployee
( Eid INT,
Ename Varchar(20),
Eage INT,
Edep Varchar(20),
Esalary Money)

select * from RSemployee

insert into RSemployee values
(106,'Raju',23,'Cloud',32000),
(107,'Chotu',21,'Cloud',26000)

select * from RSemployee

insert into RSemployee values
(108,'Rancho',21,'Finance',15000)

select * from RSemployee



-- Insert/Update/Delete

-- 1. Insert a new employee record with all details provided directly.
insert into RSemployee values 
(101,'Sujal',22,'AI',50000)

select * from RSemployee

-- 2. Add multiple new team members to the HR department at once.
insert into RSemployee values
(102,'Dhruv',25,'HR',25000),
(103,'Papad',24,'HR',18000),
(104,'Harsh',26,'HR',30000)

select * from RSemployee

-- 3. Register an employee who hasn't been assigned a salary yet.
insert into RSemployee (eid,ename,eage,edep) values
(105,'Omkar',22,'QA')

select * from RSemployee

-- 4. Update the salary to 85,000 for everyone working in the 'Cloud' department.
update RSemployee
set esalary = 85000
where edep = 'Cloud'

select * from RSemployee

-- 5. Change both the department and salary for a specific employee by name.
update RSemployee
set edep = 'Network', esalary = 22000
where ename = 'Papad'

select * from RSemployee

-- 6. Give a flat 10% appraisal boost to employee working in AI department.
update RSemployee
set esalary = esalary * 1.10
where edep = 'AI'

select * from RSemployee

-- 7. Assign an initial entry-level salary of 30,000 to anyone whose salary column is
-- completely blank (NULL).
update RSemployee
set esalary = 30000
where esalary IS NUll

select * from RSemployee

-- 8. Remove a specific employee from the system using their unique ID.
delete RSemployee
where eid = 106

select * from RSemployee

-- 9. Remove all records belonging to a department that has been completely shut down.
delete RSemployee
where edep = 'HR'

select * from RSemployee

-- 10.Drop records of any employee earning less than 20,000 in the Finance division.
delete RSemployee
where edep = 'Finance' AND esalary < 20000 

select * from RSemployee
