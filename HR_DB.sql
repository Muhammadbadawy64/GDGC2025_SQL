use HR_DB

select * 
from Employees

select *
from Employees
where CountryID = 1

select *
from Departments

select *
from Employees
where DepartmentID = 3

select * 
from Employees
where MonthlySalary >5000

select *
from Employees
where HireDate >= '2021-01-01';

select * 
from Employees 
where ExitDate is not null

select * 
from Employees 
where BonusPerc > 0.10