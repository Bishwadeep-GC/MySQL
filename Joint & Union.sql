create database operation
use operation
create table if not exists ops(
course_id int,
course_name varchar(30),
course_desc varchar(30),
course_tag varchar(30))

create table if not exists obs(
student_id int,
student_name varchar(39),
student_mobile int,
student_course_enroll varchar(30),
student_course_id int)

insert into ops values(100, 'blockchain', 'analytics', 'fsda'),
(103, 'blockchai', 'aanalytics', 'fsdna'),
(104, 'blockchan', 'acnalytics', 'fsbda'),
(105, 'blockcin', 'avnalytics', 'fsdfa'),
(106, 'blochain', 'avdnalytics', 'fsdqa'),
(107, 'blockain', 'angfalytics', 'fsdfa'),
(108, 'blochain', 'analtrytics', 'fsdwa'),
(102, 'blckchain', 'analyfstics', 'fwrsda'),
(109, 'bockchain', 'analytsfreics', 'fsreda'),
(1033, 'lockchain', 'analyticrfs', 'fgrsda'),
(1067, 'blkchain', 'analyticsfs', 'gfsda')

insert into obs values(100090, 'chain', 4567892, 'data analytics', 321),
(100090, 'chain', 4567892, 'data analytics', 103),
(100090, 'chain', 4567892, 'data analytics', 104),
(100090, 'chain', 4567892, 'data analytics', 105),
(100090, 'chain', 4567892, 'data analytics', 106),
(100090, 'chain', 4567892, 'data analytics', 107),
(100090, 'chain', 4567892, 'data analytics', 350),
(100090, 'chain', 4567892, 'data analytics', 351),
(100090, 'chain', 4567892, 'data analytics', 352),
(100090, 'chain', 4567892, 'data analytics', 353)

select * from ops;
select * from obs;
select c.course_id, c.course_name, c.course_desc, s.student_id, s.student_name, s.student_course_id from ops c
inner join obs s on c.course_id = s.student_course_id

select c.course_id, c.course_name, c.course_desc, s.student_id, s.student_name, s.student_course_id from ops c
left join obs s on c.course_id = s.student_course_id

select c.course_id, c.course_name, c.course_desc, s.student_id, s.student_name, s.student_course_id from ops c
left join obs s on c.course_id = s.student_course_id where s.student_id is null

show index from ops
create table if not exists ops1(
course_id int,
course_name varchar(30),
course_desc varchar(30),
course_tag varchar(30),
index(course_id))

select * from ops1
show index from ops1
insert into ops1 values(100, 'blockchain', 'analytics', 'fsda'),
(103, 'blockchai', 'aanalytics', 'fsdna'),
(104, 'blockchan', 'acnalytics', 'fsbda'),
(105, 'blockcin', 'avnalytics', 'fsdfa'),
(106, 'blochain', 'avdnalytics', 'fsdqa'),
(107, 'blockain', 'angfalytics', 'fsdfa'),
(108, 'blochain', 'analtrytics', 'fsdwa'),
(102, 'blckchain', 'analyfstics', 'fwrsda'),
(109, 'bockchain', 'analytsfreics', 'fsreda'),
(1033, 'lockchain', 'analyticrfs', 'fgrsda'),
(1067, 'blkchain', 'analyticsfs', 'gfsda')

create table if not exists ops2(
course_id int,
course_name varchar(30),
course_desc varchar(30),
course_tag varchar(30),
index(course_id, course_name))
show index from ops2

create table if not exists ops3(
course_id int,
course_name varchar(30),
course_desc varchar(30),
course_tag varchar(30),
unique index(course_id, course_name))
show index from ops3

select course_id, course_desc from ops
union
select student_id, student_name from obs

with sample_students as (
select * from ops where course_id in (105,106,107))
select * from sample_students where course_tag = 'fsdfa'

with recursive cte as (
select 1 as n, 1 as p, -1 as q
union all
select n+1, q+2, p+4 from cte where n<5)
select * from cte

select 1 as n, 1 as p, -1 as q
