create database  if not exists dress_data;
use dress_data;
create table if not exists dress(
Dress_ID varchar(30),
Style varchar(30),	
Price varchar(30),
Rating varchar(30),
Size varchar(30),
Season varchar(30),
NeckLine varchar(30),
SleeveLength varchar(30),
waiseline varchar(30),
Material varchar(30),
FabricType varchar(30),
Decoration varchar(30),
`Pattern Type` varchar(30),
Recommendation varchar(30))

select * from dress;

load data infile
'Users/ankantuli/Desktop/AttributeDataSet.csv'
into table dress
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

SHOW VARIABLES LIKE 'secure_file_priv';
show variables like 'my.cnf';

create table if not exists test(
test_id int auto_increment,
test_name varchar(30),
test_mailid varchar(30),
test_address varchar(30),
primary key (test_id))
select * from test;

insert into test values(4,'ankan','ankan@gm','melar'),
(7,'tuli','tuli@gm','tul'),
(8,'sonk','sonk@gm','sonki')

select * from test

create table if not exists test2(
test_id int not null auto_increment,
test_name varchar(30),
test_mailid varchar(30),
test_address varchar(30),
primary key (test_id))
select * from test;
insert into test2 (test_name, test_mailid, test_address) values ('ankan','ankan@gm','melar'),
('tuli','tuli@gm','tul'),
('sonk','sonk@gm','sonki')
select * from test2

create table if not exists test3(
test_id int,
test_name varchar(30),
test_mailid varchar(30),
test_address varchar(30),
test_salary int check(test_salary>10000))

select * from test3
insert into test3 values (1,'ankan','ankan@gm','melar',100001),
(2,'tuli','tuli@gm','tul',222222),
(3,'sonk','sonk@gm','sonki',398796)
select * from test3

create table if not exists test5(
test_id int not null default 0,
test_name varchar(30),
test_mailid varchar(30),
test_address varchar(30),
test_salary int check(test_salary>10000))

insert into test5(test_name, test_mailid, test_address, test_salary) values ('ankan','ankan@gm','melar',22374),
('tuli','tuli@gm','tul',457869),
('sonk','sonk@gm','sonki',577979)
select * from test5

create table if not exists test6(
test_id int not null auto_increment,
test_name varchar(30) not null default 'unknown',
test_mailid varchar(30) unique not null,
test_address varchar(30) check(test_address= 'tul') not null,
test_salary int check(test_salary>10000),
primary key (test_id))

insert into test6(test_name, test_mailid, test_address, test_salary) values ('ankan','ankan8@gm','tul',22374)
insert into test6(test_id, test_name, test_mailid, test_address, test_salary) values (40000,'ankan','ankan6@gm','tul',22374)

select * from test6