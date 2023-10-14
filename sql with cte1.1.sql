select * from payment1
select * from customer1

with mycte as (
	select *, avg(amount) over(order by p.custmoer_id ) as "avrage_price",
	count(address_id) over (order by c.custmoer_id) as "count"
	from payment1 as p
	inner join customer1 as c
	on p.custmoer_id = c.custmoer_id
)
select first_name ,last_name , amount ,count
from mycte

---------------multiple cte ---------

with mycte as (
	select *, avg(amount) over(order by p.custmoer_id ) as "avrage_price",
	count(address_id) over (order by c.custmoer_id) as "count"
	from payment1 as p
	inner join customer1 as c
	on p.custmoer_id = c.custmoer_id
),

myca as (
	select *
	from customer1 as c
	inner join address as a
	on a.address_id = c.address_id
	inner join country as cc
	on cc.city_id = a.city_id
	
)

select first_name ,last_name , amount ,count
from mycte

select * from customer1



-----------------------------------------------------------------
