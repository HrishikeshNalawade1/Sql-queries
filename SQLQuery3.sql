use Employee;

select *from Employe ;

create trigger trigdel
on Employe
for delete
as 
print 'Deletetion is not allowed'
rollback transaction
return

delete Employe;


create trigger trig
on Employe
for insert
as
declare @mysalary int
select @mysalary =e_salary from inserted
if(@mysalary >=200000)
begin
print 'Salary should be less than 200000'
rollback transaction
return
end

insert into Employe values(5,'rishi',300000,55,'Male');

create trigger trigup11
on Employe
for update
as 
if update(e_age)
begin
declare @age1 int
select @age1= e_age
from Employe
if(@age1>60)
begin

print 'Age cannot be greater than 60'
rollback transaction

return
end
end

update Employe SET e_age=45 where e_id=3;

select *from Employe;

create index Idx_e_id
on Employe (e_id);


Sp_helpindex Employe


select *from Employe where e_gender='Male' AND e_age<30

select * from Employe where e_salary>90000  OR e_age<30
select * from Employe where NOT e_gender='male'

select * from Employe where  e_name like 'S%'

select * from Employe where e_salary BETWEEN 6000 AND 96000;

select min(e_salary) from Employe

select COUNT(*)From  Employe where e_gender='male'

create view EmpDetail11
as
select *from Employe
where e_gender='male';

select *from EmpDetail11;

insert into EmpDetail11 values (5,'Rahul',6000,29,'male')
select *from Employe

update EmpDetail11 set e_name='Rohan' where e_name='Rahul' 

select *from EmpDetail11

select MIn(e_salary) from EmpDetail11
select sum(e_salary)from EmpDetail11

select AVG(e_age) from Employe

select  '     Hrishikesh'

Select ltrim ('     Hrishikesh')

select *from Employe order by e_salary 
select *from Employe order by e_salary DESC

select *from Employe order by e_id 

select TOP 2 *From Employe

select top 3 *from Employe order by e_age DESC

select avg(e_salary),e_gender From Employe group by e_gender;

select sum(e_salary),e_gender from Employe group by e_gender;

