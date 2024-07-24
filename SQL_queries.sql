create database if not exists cvsales;
use cvsales;
create table if not exists salesdatas(
	order_id varchar(30) not null,
	order_date varchar(30) not null,
	ship_date varchar(30) not null,
	ship_mode varchar(30) not null,
	customer_name varchar(40) not null,
	segment	varchar(30) not null,
    state varchar(40) not null,
	country	varchar(30) not null,
    market varchar(30) not null,
	region varchar(30) not null,
	product_id varchar(40) not null,
	category varchar(30) not null,
	sub_category varchar(40) not null,
	product_name varchar(100) not null,
	sales decimal(30,0) not null,
	quantity decimal(30,0) not null,
	discount decimal (38,3) not null,
	profit decimal (40,8) not null,
	shipping_cost decimal (40,3) not null,
	order_priority	varchar(30) not null,
    `year` int not null);
    
   set session sql_mode= ''
   
   load data infile 
    "/Users/ankantuli/Downloads/sales_data_final.csv"
    into table salesdata
    fields terminated by ','
    enclosed by '"'
    lines terminated by '\n'
    ignore 1 rows;
    
insert into salesdatas values('AG-2011-2040',	'1/1/2011',	'1/6/2011',	'Standard Class',	'Toby Braunhardt',	'Consumer',	'Constantine',	'Algeria',	'Africa',	'Africa',	'OFF-TEN-10000025',	'Office Supplies',	'Storage',	'Tenex Lockers, Blue',	408,	2,	0,	106.14,	35.46,	'Medium',	2011)
insert into salesdatas values('IN-2011-47883',	'1/1/2011',	'1/8/2011',	'Standard Class',	'Joseph Holt',	'Consumer',	'New South Wales',	'Australia',	'APAC',	'Oceania',	'OFF-SU-10000618',	'Office Supplies',	'Supplies',	'Acme Trimmer, High Speed',	120,	3,	0.1,	36.036,	9.72,	'Medium',	2011)
insert into salesdatas values('HU-2011-1220',	'1/1/2011',	'1/5/2011',	'Second Class',	'Annie Thurman',	'Consumer',	'Budapest',	'Hungary',	'EMEA',	'EMEA',	'OFF-TEN-10001585',	'Office Supplies',	'Storage',	'Tenex Box, Single Width',	66,	4,	0,	29.64,	8.17,	'High',	2011)
insert into salesdatas values('IT-2011-3647632',	'1/1/2011',	'1/5/2011',	'Second Class',	'Eugene Moren',	'Home Office',	'Stockholm',	'Sweden',	'EU',	'North',	'OFF-PA-10001492',	'Office Supplies',	'Paper',	'Enermax Note Cards, Premium',	45,	3,	0.5,	-26.055,	4.82,	'High',	2011)
insert into salesdatas values('IN-2011-47883',	'1/1/2011',	'1/8/2011',	'Standard Class',	'Joseph Holt',	'Consumer',	'New South Wales',	'Australia',	'APAC',	'Oceania',	'FUR-FU-10003447',	'Furniture',	'Furnishings',	'Eldon Light Bulb, Duo Pack',	114,	5,	0.1,	37.77,	4.70,	'Medium',	2011)
insert into salesdatas values('IN-2011-47883',	'1/1/2011',	'1/8/2011',	'Standard Class',	'Joseph Holt',	'Consumer',	'New South Wales',	'Australia',	'APAC',	'Oceania',	'OFF-PA-10001968',	'Office Supplies',	'Paper',	'Eaton Computer Printout Paper, 8.5 x 11',	55,	2,	0.1,	15.342,	'1.80',	'Medium',	2011)
insert into salesdatas values('CA-2011-1510',	'1/2/2011',	'1/6/2011',	'Standard Class',	'Magdelene Morse',	'Consumer',	'Ontario',	'Canada',	'Canada',	'Canada',	'TEC-OKI-10002750',	'Technology',	'Machines',	'Okidata Inkjet, Wireless',	314,	1,	0,	3.12,	24.10,	'Medium',	2011)
insert into salesdatas values('IN-2011-79397',	'1/3/2011',	'1/3/2011',	'Same Day',	'Kean Nguyen',	'Corporate',	'New South Wales',	'Australia',	'APAC',	'Oceania',	'OFF-AP-10000304',	'Office Supplies',	'Appliances',	'Hoover Microwave, White',	276,	1,	0.1,	110.412,	125.32,	'Critical',	2011)
insert into salesdatas values('ID-2011-80230',	'1/3/2011',	'1/9/2011',	'Standard Class',	'Ken Lonsdale',	'Consumer',	'Auckland',	'New Zealand',	'APAC',	'Oceania',	'TEC-CO-10004182',	'Technology',	'Copiers',	'Hewlett Wireless Fax, Laser',	912,	4,	0.4,	-319.464,	107.1,	'Low',	2011)
insert into salesdatas values('IZ-2011-4680',	'1/3/2011',	'1/7/2011',	'Standard Class',	'Lindsay Williams',	'Corporate',	'Ninawa',	'Iraq',	'EMEA',	'EMEA',	'FUR-NOV-10002791',	'Furniture',	'Chairs',	'Novimex Swivel Stool, Set of Two',	667,	4,	0,	253.32,	81.26,	'High',	2011)
insert into salesdatas values('IN-2011-65159',	'1/3/2011',	'1/7/2011',	'Second Class',	'Larry Blacks',	'Consumer',	'National Capital',	'Philippines',	'APAC',	'Southeast Asia',	'OFF-ST-10003020',	'Office Supplies',	'Storage',	'Tenex Lockers, Industrial',	338,	3,	0.45,	-122.8005,	33.75,	'High',	2011)
insert into salesdatas values('IN-2011-65159',	'1/3/2011',	'1/7/2011',	'Second Class',	'Larry Blacks',	'Consumer',	'National Capital',	'Philippines',	'APAC',	'Southeast Asia',	'FUR-TA-10002797',	'Furniture',	'Tables',	'Chromcraft Round Table, Adjustable Height',	211,	1,	0.55,	-70.3995,	21.32,	'High',	2011)
insert into salesdatas values('ES-2011-4869686',	'1/3/2011',	'1/7/2011',	'Standard Class',	'Dorothy Dickinson',	'Consumer',	'England',	'United Kingdom',	'EU',	'North',	'FUR-BO-10000728',	'Furniture',	'Bookcases',	'Dania Corner Shelving, Traditional',	854,	7,	0,	290.43,	12.56,	'Medium',	2011)
insert into salesdatas values('IN-2011-33652',	'1/3/2011',	'1/9/2011',	'Standard Class',	'Dennis Pardue',	'Home Office',	'Sarawak',	'Malaysia',	'APAC',	'Southeast Asia',	'TEC-CO-10000594',	'Technology',	'Copiers',	'Hewlett Fax and Copier, Laser',	193,	1,	0,	50.13,	10.40,	'Medium',	2011)

select * from salesdatas    
select str_to_date(order_date, '%m/%d/%y') from salesdatas

alter table salesdatas 
add column order_date_new date after order_date
set sql_safe_updates = 0;
update salesdatas
set order_date_new = str_to_date(order_date, '%m/%d/%Y') 

alter table salesdatas
add column ship_date_new date after ship_date
update salesdatas
set ship_date_new = str_to_date(ship_date, '%m/%d/%Y')

select * from salesdatas where ship_date_new ='2011-01-05'
select now()
select curdate()
select curtime()
select * from salesdatas where ship_date_new < date_sub(now(), interval 1 week)
select dayname(now())
select dayname('2030-10-31')

alter table salesdatas
add column flag date after ship_mode
update salesdatas set flag = curdate();

alter table salesdatas
modify column year datetime;

alter table salesdatas
modify column year_new int after order_date_new
update salesdatas set year_new = year(order_date_new)

alter table salesdatas
modify column month_new int after year_new
update salesdatas set month_new = month(order_date_new) 

alter table salesdatas
modify column date_new int after month_new
update salesdatas set date_new = day(order_date_new)

select month(order_date_new) from salesdatas
select * from salesdatas

select year_new, avg(sales) from salesdatas group by year_new
select (shipping_cost + discount) as CTC from salesdatas
select order_id, if(discount>0, 'no', 'yes') as discount_flag from salesdatas
select count(*) from salesdatas where discount>0




 