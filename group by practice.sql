create table payment (

	customer_id int8 primary key,
	amount bigint,
	mode varchar(50),
	payment_date date
);

select * from payment

---group by practical ----

select mode , sum(amount) as total
from payment 
group by mode


select mode , sum(amount) as total
from payment 
group by mode
order by total asc


select mode , sum(amount) as total
from payment 
group by mode
order by total desc



select mode , count(amount) as total
from payment 
group by mode
having count(amount) >=3
order by total desc


select mode , count(amount) as total
from payment 
group by mode
having count(amount)>=2 and count(amount) <4
order by total desc


select * from payment


