with my_cte as 
(
	select mode, max(amount) as Highest_price, sum(amount) as Total_price
	from payment
	group by mode
)
select payment.*, my.Highest_price, my.Total_price
from payment
join my_cte my
on payment.mode = my.mode
order by payment.mode


select * from payment