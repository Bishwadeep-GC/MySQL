create database course
use course
create table courses(
course_name varchar(30),
course_id int,
course_title varchar(30),
course_desc varchar(30),
launch_date date,
course_fee int,
course_mentor varchar(30),
course_launch_year int)
select * from courses
insert into courses values('ml', 101, 'mldl', 'this is ML', '2020-06-07', 5000, 'sudh', 2019),
('al', 102, 'mldl', 'this is aL', '2021-06-07', 5000, 'sudh', 2020),
('dl', 103, 'mldl', 'this is dL', '2022-06-07', 4000, 'sudh', 2021),
('bc', 104, 'mldl', 'this is bc', '2020-06-07', 5050, 'sudh', 2020),
('dal', 107, 'mldl', 'this is fsdc', '2019-06-07', 5070, 'sudh', 2022),
('aws', 109, 'mldl', 'this is aws', '2023-06-07', 3000, 'sudh', 2021)
select * from courses where course_launch_year=2021

create table courses2(
course_name varchar(30),
course_id int,
course_title varchar(30),
course_desc varchar(30),
launch_date date,
course_fee int,
course_mentor varchar(30),
course_launch_year int)
partition by range(course_launch_year)(
partition p0 values less than (2019),
partition p1 values less than (2020),
partition p2 values less than (2021),
partition p3 values less than (2022),
partition p4 values less than (2023));
insert into courses2 values('ml', 101, 'mldl', 'this is ML', '2020-06-07', 5000, 'sudh', 2019),
('al', 102, 'mldl', 'this is aL', '2021-06-07', 5000, 'sudh', 2020),
('dl', 103, 'mldl', 'this is dL', '2022-06-07', 4000, 'sudh', 2021),
('bc', 104, 'mldl', 'this is bc', '2020-06-07', 5050, 'sudh', 2020),
('dal', 107, 'mldl', 'this is fsdc', '2019-06-07', 5070, 'sudh', 2022),
('aws', 109, 'mldl', 'this is aws', '2023-06-07', 3000, 'sudh', 2021)
select * from courses2 where course_launch_year=2020
select partition_name, table_name, table_rows from information_schema.partitions where table_name= 'courses2'

create table courses3(
course_name varchar(30),
course_id int,
course_title varchar(30),
course_desc varchar(30),
launch_date date,
course_fee int,
course_mentor varchar(30),
course_launch_year int)
partition by hash(course_launch_year)
partitions 5
select partition_name, table_name, table_rows from information_schema.partitions where table_name= 'courses3'
insert into courses3 values('ml', 101, 'mldl', 'this is ML', '2020-06-07', 5000, 'sudh', 2019),
('al', 102, 'mldl', 'this is aL', '2021-06-07', 5000, 'sudh', 2020),
('dl', 103, 'mldl', 'this is dL', '2022-06-07', 4000, 'sudh', 2021),
('bc', 104, 'mldl', 'this is bc', '2020-06-07', 5050, 'sudh', 2020),
('dal', 107, 'mldl', 'this is fsdc', '2019-06-07', 5070, 'sudh', 2022),
('aws', 109, 'mldl', 'this is aws', '2023-06-07', 3000, 'sudh', 2021)

create table courses4(
course_name varchar(30),
course_id int primary key,
course_title varchar(30),
course_desc varchar(30),
launch_date date,
course_fee int,
course_mentor varchar(30),
course_launch_year int)
partition by key()
partitions 10
select partition_name, table_name, table_rows from information_schema.partitions where table_name= 'courses4'
insert into courses4 values('ml', 101, 'mldl', 'this is ML', '2020-06-07', 5000, 'sudh', 2019),
('al', 102, 'mldl', 'this is aL', '2021-06-07', 5000, 'sudh', 2020),
('dl', 103, 'mldl', 'this is dL', '2022-06-07', 4000, 'sudh', 2021),
('bc', 104, 'mldl', 'this is bc', '2020-06-07', 5050, 'sudh', 2020),
('dal', 107, 'mldl', 'this is fsdc', '2019-06-07', 5070, 'sudh', 2022),
('aws', 109, 'mldl', 'this is aws', '2023-06-07', 3000, 'sudh', 2021)

select md5(2024)

partition by list
partition by range columns

