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
