/*UC1 to create a payroll service database*/
create database Payroll_service

use Payroll_service

/* UC2 create a employee payroll table in the payroll service database*/
create table Employee_payroll(
Id int identity(1,1) primary key,
Name varchar(20),
Salary varchar(10),
StartDate varchar(20)
)

/* UC3 create employee payroll data */
insert into employee_payroll(Name, Salary, StartDate) values ('Rishabh','40000','26/08/2021')
insert into employee_payroll(Name, Salary, StartDate) values ('Rahul','50000','25/08/2021')
insert into employee_payroll(Name, Salary, StartDate) values ('Satish','60000','27/08/2021')
insert into employee_payroll(Name, Salary, StartDate) values ('Riya','35000','26/08/2021')
insert into employee_payroll(Name, Salary, StartDate) values ('Priya','25000','26/08/2021')
insert into employee_payroll(Name, Salary, StartDate) values ('Bhanu','35000','26/08/2021')
insert into employee_payroll(Name, Salary, StartDate) values ('Chotu','25000','27/08/2021')

/* UC4 retrieve all the employee payroll data */
select * from employee_payroll

/*UC5 retrieve salary data on a condition */
SELECT Salary,Name FROM employee_payroll WHERE Name = 'Bill'
Select Salary,Name from employee_payroll where StartDate between ('25/08/2021') and ('26/08/2021')

/* UC6 add Gender to Employee Payroll Table and Update the Rows */
ALTER TABLE employee_payroll ADD Gender varchar(6);
UPDATE employee_payroll set Gender = 'M' where  Name='Rishabh' or Name = 'Bhanu' or Name='Chotu' or Name='Rahul' or Name='Satish'
UPDATE employee_payroll set Gender = 'F' where  Name='Riya' or Name = 'Priya'
/* UC7 use of Database functions with GroupBy */
Alter Table employee_payroll
Alter Column Salary float

Select SUM(Salary) From employee_payroll Where Gender='M' Group by Gender
Select SUM(Salary) From employee_payroll Where Gender='F' Group by Gender

Select AVG(Salary) From employee_payroll Where Gender='M' Group by Gender
Select AVG(Salary) From employee_payroll Where Gender='F' Group by Gender

Select MIN(Salary) From employee_payroll Where Gender='M' Group by Gender
Select MIN(Salary) From employee_payroll Where Gender='F' Group by Gender

Select MAX(Salary) From employee_payroll Where Gender='M' Group by Gender
Select MAX(Salary) From employee_payroll Where Gender='F' Group by Gender

Select COUNT(Salary) From employee_payroll Where Gender='M' Group by Gender
Select COUNT(Salary) From employee_payroll Where Gender='F' Group by Gender

/* UC8 extend employee_payroll data and save more details */
ALTER TABLE employee_payroll ADD Phone varchar(16), Address varchar(32) DEFAULT 'Empty' WITH VALUES, Department varchar(16) NOT NULL DEFAULT 'Developer';
select * from employee_payroll

/* UC9 extend employee_payroll table to have Basic Pay, Deductions, Taxable Pay, Income Tax, Net Pay*/
ALTER TABLE employee_payroll ADD BasicPay Float Not Null default 0, 
Deductions Float Not Null default 0, TaxablePay Float Not Null default 0,
IncomeTax Float Not Null default 0, NetPay Float Not Null default 0;

UPDATE employee_payroll set BasicPay=30000.50 where Name='Rishabh';
UPDATE employee_payroll set BasicPay=40000 where Name='Rahul';
UPDATE employee_payroll set BasicPay=50000 where Name='Satish';
UPDATE employee_payroll set BasicPay=25000 where Name='Riya';
UPDATE employee_payroll set BasicPay=15000.75 where Name='Priya';
UPDATE employee_payroll set BasicPay=25000 where Name='Bhanu';
UPDATE employee_payroll set BasicPay=15000 where Name='Chotu';

select * from employee_payroll

/* UC10 Insert all values to the table */
ALTER TABLE employee_payroll DROP COLUMN Salary

 Update employee_payroll set 
 Phone=9999888877 ,Address='Agra', Department='FrontEnd', Deductions=2000, TaxablePay=1000, IncomeTax=2000, NetPay=25000 where name='Rishabh'
 Update employee_payroll set 
 Phone=9988558899 ,Address='Delhi', Department='Accounts', Deductions=3000, TaxablePay=1000, IncomeTax=3000, NetPay=33000 where name='Rahul'
 Update employee_payroll set 
 Phone=8877995544 ,Address='Pune', Department='Backend', Deductions=2000, TaxablePay=1000, IncomeTax=4000, NetPay=43000 where name='Satish'
 Update employee_payroll set 
 Phone=7744112233 ,Address='Chennai', Department='Testing', Deductions=1500, TaxablePay=1000, IncomeTax=1000, NetPay=21500 where name='Riya'
 Update employee_payroll set 
 Phone=7775553330 ,Address='Kolkata', Department='FrontEnd', Deductions=1000, TaxablePay=500, IncomeTax=0, NetPay=13500 where name='Priya'
 Update employee_payroll set 
 Phone=9080706050 ,Address='Delhi', Department='Accounts', Deductions=1500, TaxablePay=500, IncomeTax=1000, NetPay=22000 where name='Bhanu'
 Update employee_payroll set 
 Phone=8090603020 ,Address='Chennai', Department='Backend', Deductions=1000, TaxablePay=500, IncomeTax=0, NetPay=13500 where name='Chotu'

Insert into employee_payroll 
(Name, Gender, Phone, Address, Department, StartDate, BasicPay, Deductions, TaxablePay, IncomeTax, NetPay) values ('Riya','F',8887779999,'India','Sales','28/08/2021',20000,2000,1000,0,17000)

select * from employee_payroll where Name='Riya'
