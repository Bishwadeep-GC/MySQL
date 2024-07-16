create database if not exists sql_basics;
use sql_basics;
create table if not exists bank_details(
age	int,
job	varchar(30),
marital	varchar(30),
education varchar(30),
`default` varchar(30),
balance	int,
housing	varchar(30),
loan varchar(30),
contact varchar(30),
`day` int,
`month` varchar(30),
duration int,
campaign int,
pdays int,
previous int,
poutcome varchar(30),
y varchar(30))

select * from bank_details
select count(*) from bank_details

insert into bank_details values(58,	'management',	'married',	'tertiary',	'no',	2143,	'yes',	'no',	'unknown',	5,	'may',	261,	1,	-1,	0,	'unknown',	'no')
insert into bank_details values(44,	'technician',	'single',	'secondary',	'no',	29,	'yes',	'no',	'unknown',	5,	'may',	151,	1,	-1,	0,	'unknown',	'no')

select job from bank_details
select * from bank_details where education = 'unknown' or marital ='single' and balance <500 
select distinct job from bank_details
select * from bank_details order by age desc
select sum(balance) from bank_details 
select avg(balance) from bank_details 
select min(balance) from bank_details 
select * from bank_details where balance < 10 
select * from bank_details where loan = 'yes' 
select * from bank_details where balance = ( select max(balance) from bank_details)

