create database learn_key
use learn_key

create table logi(
course_id int not null,
course_name varchar(30) not null,
course_status varchar(30) not null,
no_of_enrol int,
primary key (course_id))

insert into logi values(1, 'eng', 'half', 4)
select * from logi

create table tech(
student_id int not null,
course_name varchar(30),
student_mail varchar(30),
student_status varchar(30),
course_id1 int,
foreign key(course_id1) references logi(course_id))

insert into tech values(101, 'rog', 'sru@gmail', 'active', 1)
insert into tech values(101, 'rog', 'sru@gmail', 'active', 1)
insert into tech values(101, 'rog', 'sru@gmail', 'active', 1)
select * from tech

create table payment(
course_name varchar(30),
course_id int,
course_live varchar(30),
course_launch_date varchar(30),
foreign key (course_id) references logi(course_id))

insert into payment values('fsd', 1, 'yes', '7th')

create table class(
course_id int,
class_name varchar(30),
class_topic varchar(30),
class_duration decimal(30,0),
primary key (course_id),
foreign key (course_id) references logi(course_id))

alter table logi add constraint test primary key(course_id, course_name)
drop table class

create table testing(
id int,
chow varchar(30),
him varchar(30))
alter table testing add primary key(id)
alter table testing drop primary key

alter table testing add constraint test primary key(id, him)

create table parent(
hello int,
primary key (hello))

create table child(
id int,
boss int,
foreign key (id) references parent(hello))

insert into parent value(1)
select * from parent

insert into child value(1, 2)
select * from child

delete from child where id=1
delete from parent where hello=1
drop table child

create table child(
id int,
boss int,
foreign key (id) references parent(hello) on delete cascade)

insert into child values(1,1),(1,2),(2,1),(3,1)
delete from parent where hello = 1

create table child(
id int,
boss int,
foreign key (id) references parent(hello) on update cascade)
insert into child values(1,1),(1,2),(2,1),(3,1)

select * from child
select * from parent

update parent set hello=5 where hello = 1

