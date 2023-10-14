create table payment1
(
	custmoer_id int8 primary key ,
	amount int8,
	modde varchar(50),
	payment_date date
	
	
);
select * from payment1

insert into payment1
(custmoer_id,amount,modde,payment_date)
values
	(1,60,'cash','2020-09-24'),
	(8,110,'cash','2021-01-26'),
	(10,70,'mobile payment','2021-02-28'),
	(11,80,'cash','2021-03-01'),
	(2,500,'cridit card','2020-04-27');
	
select * from payment1

----find the avrage value ----
----filter the customer data > avg value

select avg(amount) from payment1

select * 
from payment1
where amount > 164

---used subquary--- this quary is optimiz----

select * 
from payment1
where amount > (select avg(amount) from payment1)

---sub query using logical (in) operator  

create table customer1
(
	custmoer_id int8 primary key ,
	first_name varchar(50),
	last_name varchar(50),
	address_id int8
	
	
);

select * from customer1

insert into customer1
(custmoer_id,first_name,last_name,address_id)
values
(1,'mary','smith',5),
(3,'linda','williams',7),
(4,'Barbara','jones',8),
(2,'Madan','Mohan',6);

select * from customer1
select * from payment1

select custmoer_id , amount, modde from payment1
where custmoer_id in (select custmoer_id from customer1)


---sub query using logical (in) operator 
select * from customer1
select * from payment1

select first_name, last_name
from customer1 c
where exists ( select custmoer_id , amount
               from payment1 p
			   where p.custmoer_id = c.custmoer_id
			   and amount > 100)
			 







