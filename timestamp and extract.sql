select now()
show timezone
select now()

select timeofday()

select current_time

select current_time

select extract(month from payment_date ) as payment_month , payment_date
from payment 

select extract(year from payment_date ) as payment_year , payment_date
from payment 

select extract(day from payment_date ) as payment_day , payment_date
from payment 
order by  payment_date asc
limit 5

select extract(day from payment_date ) as payment_day , payment_date
from payment 
order by  payment_date desc
limit 5









