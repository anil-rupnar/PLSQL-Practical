select * from customer1

select * from payment


--- inner join with all column 
select * 
from customer1 as c
inner join payment as p
on c.customer_id = p.customer_id

--- inner join with perticular column 
select c.first_name, p.amount, p.mode
from customer1 as c
inner join payment as p
on c.customer_id = p.customer_id

----- left join ---

select * 
from customer1 as c 
left join payment as p 
on c.customer_id = p.customer_id
limit 5

select c.first_name , c.last_name ,p.amount, p.mode 
from customer1 as c 
left join payment as p 
on c.customer_id = p.customer_id
limit 5

------- right join ----

select * 
from customer1 as c 
right join payment as p 
on c.customer_id = p.customer_id
limit 5

select c.first_name , c.last_name ,p.amount, p.mode 
from customer1 as c 
right join payment as p 
on c.customer_id = p.customer_id
limit 5

----- full join ---

select * 
from customer1 as c 
full join payment as p 
on c.customer_id = p.customer_id
limit 5





