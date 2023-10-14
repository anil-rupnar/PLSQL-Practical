create table employee
(
	empid int8 primary key ,
	empname varchar(20) not null,
	manager_id bigint
)

select * from employee

insert into employee(empid,empname,manager_id)
values
(1,'Agni',3),
(2,'Akash',4),
(3,'Dharti',2),
(4,'Vayu',3);

select * from employee

----self join -------------

select *
from employee as t1
join employee as t2
on t1.empid = t2.manager_id

select t1.empname as employee_name,t2.empname as manager_name
from employee as t1
join employee as t2
on t1.empid = t2.manager_id

---union ans union all concepts----
create table custA
(
	
	cust_name varchar(30) ,
	
	cust_amount bigint
)

select * from custA

insert into custA(cust_name,cust_amount)
values
('Madan Mohan',2100),
('Gopi Nath',1200),
('Govind Dev',5000);


select * from CustA

create table custB
(
	
	cust_name varchar(30) ,
	
	cust_amount bigint
);

select * from custB

insert into custB(cust_name,cust_amount)
values
('Gopal Bhat',1500),
('Madan Mohan',2100);

select * from custB

select cust_name,cust_amount from custA
union 
select cust_name,cust_amount from custB

select cust_name,cust_amount from custA
union all 
select cust_name, cust_amount from custB

