CREATE DATABASE  Employee;

use Employee;
Create table Employe
(
e_id int NOT NULL,
e_name varchar(20),
e_salary int,
e_age int,
e_gender varchar(20),

Primary key(e_id)
);

insert into Employe values(1,'sam',95000,45,'Male');
insert into Employe values(2,'Bob',80000,35,'Male');
insert into Employe values(3,'Anne',12500,25,'Female');

select e_name from Employe; 
select * from Employe;