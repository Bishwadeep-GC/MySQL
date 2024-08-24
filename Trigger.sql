create database ankan
use ankan

create table if not exists ank(
course_id int,
course_mentor varchar(30),
course_desc varchar(30),
course_price int,
course_discount int,
create_date date)

create table if not exists anki(
course_mentor_update varchar(30),
course_price_update int,
course_discount_update int)

delimiter //
create trigger course_before_insert
before insert 
on ank for each row
begin
set new.create_date = sysdate();
end //

select * from ank
insert into ank(course_id, course_mentor, course_desc, course_price, course_discount) value(101, 'khali', 'analyics', 1000, 10)

create table if not exists ank2(
course_id int,
course_mentor varchar(30),
course_desc varchar(30),
course_price int,
course_discount int,
create_date date,
user_info varchar(30))

delimiter //
create trigger course_before_inserts
before insert 
on ank2 for each row
begin
declare user_val varchar(30);
set new.create_date = sysdate();
select user() into user_val;
set new.user_info= user_val;
end //
insert into ank2(course_id, course_mentor, course_desc, course_price, course_discount) value(101, 'khali', 'analyics', 1000, 10)
select * from ank2

create table test1(
c1 varchar(30),
c2 date,
c3 int)

create table test2(
c1 varchar(30),
c2 date,
c3 int)

create table test3(
c1 varchar(30),
c2 date,
c3 int)

delimiter //
create trigger to_update
before insert on test1 for each row
begin
	insert into test2 values("cvb",sysdate(),786);
	insert into test2 values("cib",sysdate(),7867);
end; //

insert into test1 values("cfgog",sysdate(),78687);

select * from test1
select * from test2
select * from test3

delimiter //
create trigger to_update_other
after insert on test1 for each row
begin
	update test2 set c1="shfj" where c1="ejd"
	delete from test3 where c1="ejd"
end; //


delimiter //
create trigger to_delete_others_table 
after delete on test1 for each row 
begin
	insert into test3 values("after delete" , sysdate(), 435456);
end; //

select * from test1

delete from test1 where c1 = 'hello'

delimiter //
create trigger to_delete_others_before
before delete on test1 for each row 
begin
	insert into test3 values("after delete" , sysdate(), 435456);
end; //

delimiter //
create trigger to_delete_others_before_observation
before delete on test1 for each row 
begin
	insert into test2(c1,c2,c3) values(old.c1, old.c2,old.c3);
end; //

SELECT * FROM operation;

select * ,
case 
	when course_name = 'fsda' then sysdate()
    when course_name = 'fsds' then system_user()
    else "this is not your batch"
end as statement 
from ineuron_course

select * ,
case 
	when length(course_name) = 4  then "len 4"
    when length(course_name)= 2  then "len 2"
    else "other lenght"
end as statement 
from operation


update operation set course_name = case 
when course_name = 'RL' then 'reinforcement learing'
when course_name = 'dl' then 'deep learning'
end 

select * from operation

select * from test1
select * from test2

delete from test1 where c1 = 'abc'