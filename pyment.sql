create table customer 
(
	customer_id int8 primary key,
	first_name varchar(50),
	last_name varchar(50),
	email varchar(100),
	address_id int8
)

select * from customer

copy customer(customer_id, first_name,last_name,email,address_id)
from 'D:\customer.csv'
delimiter ','
csv header;

select * from customer


create table payment 
(
	customer_id int8 primary key,
	amount int8 not null,
	mode varchar(50),
	payment_date date
)