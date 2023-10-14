select * from payment1

select custmoer_id,amount,
case
	when amount > 100 then 'Expensive Product'
	when amount = 100 then ' Moderate Product '
	else 'Inexpensive Product'
end as productstatus 
from payment1


--case eexpression ---------
select custmoer_id,amount,
case amount
	when 500 then 'Expensive Product'
	when 100 then 'Moderate Product '
	else 'Inexpensive Product'
end as Customerstatus 
from payment1

