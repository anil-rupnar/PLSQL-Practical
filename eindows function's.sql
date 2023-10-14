create table test_data
(
	new_id int8 ,
	new_cat varchar(50)
);

select * from test_data

insert into test_data
(
	new_id,
	new_cat
)
values
(100,'Agni'),
(200,'Agni'),
(200,'vayu'),
(300,'vayu'),
(500,'vayu'),
(500,'bharti'),
(700,'bharti');


select  new_id,new_cat,
sum(new_id) OVER(order by new_id rows between unbounded preceding and unbounded following) as "Total",
avg(new_id) OVER(order by new_id rows between unbounded preceding and unbounded following) as "Average",
count(new_id) OVER(order by new_id rows between unbounded preceding and unbounded following) as "count",
min(new_id) OVER(order by new_id rows between unbounded preceding and unbounded following) as "Min",
max(new_id) OVER(ORDER BY new_id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED following) as "Max"
from test_data;

/*
SELECT
  new_id,
  SUM(new_id) OVER (ORDER BY new_id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS Total,
  AVG(new_id) OVER (ORDER BY new_id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS Average,
  COUNT(new_id) OVER (ORDER BY new_id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS Count,
  MIN(new_id) OVER (ORDER BY new_id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS Min,
  MAX(new_id) OVER (ORDER BY new_id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS Max
FROM test_data; */

select new_id,
row_number() over(order by new_id) as "Row Number",
rank() over (order by new_id ) as "Rank",
dense_rank() over (order by new_id) as "Dense Rank",
percent_rank() over(order by new_id) as "Percent Rank" 
from test_data


---Analytic function example----
select new_id,
first_value(new_id) over(order by new_id) as "First_value",
last_value(new_id) over(order by new_id) as "last_value",
lead(new_id) over(order by new_id) as "Lead",
lag(new_id) over(order by new_id) as "Lag"
from test_data;

---home work ---

select new_id,
first_value(new_id) over(order by new_id) as "First_value",
last_value(new_id) over(order by new_id) as "last_value",
lead(new_id,2) over(order by new_id) as "Lead",
lag(new_id,2) over(order by new_id) as "Lag"
from test_data;
