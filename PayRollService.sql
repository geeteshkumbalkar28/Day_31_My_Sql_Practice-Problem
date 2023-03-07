create database PayRollService;
show databases;
use PayRollService;

create table Payroll (id int primary key auto_increment, name varchar(20), salary varchar(20),
startDate varchar(20));
desc Payroll;

insert into Payroll (name,salary,startDate) values ('geetesh','98000','1-1-2022'), ('Kartik','4000','10-1-2022'), 
('dipali', '96000', '25-2-2022'), ('lokesh', '50000', '10-1-2022'); 
select *from Payroll;

select salary from Payroll where name = 'geetesh';
select salary from Payroll where name = 'Kartik';
select *from Payroll where startDate between cast('20-3-2022' as date) and date(now());

alter table Payroll add gender varchar(1);
update Payroll set gender = 'M' where name = 'geetesh' or name = 'dipali';
update Payroll set gender = 'F' where name = 'lokesh' or name = 'mahima';

select min(salary) from Payroll;
select max(salary) from Payroll;
select avg(salary) from Payroll;
select count(*) from Payroll;
select sum(salary) from Payroll where gender = 'F' group by gender;
select sum(salary) from Payroll where gender = 'M' group by gender;