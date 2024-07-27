create database fun
use fun
create table fund(
student_id int,
student_name varchar(30),
student_stream varchar(30),
student_mail varchar(30),
student_marks int,
student_subject varchar(30))
insert into fund values(100, 'ank', 'fsdhc', 'adb@gmail.com', 70, 'bio'),
(101, 'anki', 'fsdh', 'qadb@gmail.com', 70, 'biot'),
(102, 'ankit', 'fsdh', 'iadb@gmail.com', 71, 'bioty'),
(103, 'ankita', 'fsdh', 'madb@gmail.com', 72, 'bior'),
(104, 'anka', 'fsdh', 'nadb@gmail.com', 73, 'bioe'),
(105, 'ankan', 'fsdhc', 'hadb@gmail.com', 74, 'bioq'),
(106, 'ankb', 'fsdhc', 'yadb@gmail.com', 75, 'bioj'),
(107, 'ankbh', 'fsdhc', 'tadb@gmail.com', 76, 'biok'),
(108, 'ankbha', 'fsdhc', 'eadb@gmail.com', 77, 'bion'),
(109, 'ankg', 'fsdhcr', 'wadb@gmail.com', 78, 'biol'),
(110, 'ankgo', 'fsdhcr', 'radb@gmail.com', 79, 'bioo'),
(111, 'ankgon', 'fsdhcr', 'fadb@gmail.com', 80, 'biop'),
(112, 'ankc', 'fsdhcr', 'cadb@gmail.com', 81, 'bioc')
select * from fund
select student_stream, sum(student_marks) from fund group by student_stream
select count(student_stream) from fund
select count(distinct student_stream) from fund
select student_stream, count(student_stream) from fund group by student_stream

select student_name from fund where student_marks in (select max(student_marks) from fund where student_stream='fsdh')
select student_name from fund where student_stream='fsdh' order by student_marks desc limit 1

select student_id, student_stream, student_subject, student_marks, row_number()over(order by student_marks) as 'horizontal' from fund
select student_id, student_stream, student_subject, student_marks, row_number()over(partition by student_stream order by student_marks) as 'horizontal' from fund

select * from(select student_id, student_stream, student_subject, student_marks, row_number()over(partition by student_stream order by student_marks) as 'horizontal' from fund) as test where horizontal =1
select student_id, student_stream, student_subject, student_marks, rank()over(order by student_marks desc) as 'row_rank' from fund 

select student_id, student_stream, student_subject, student_marks, row_number()over(order by student_marks desc) as 'row_num', rank()over(order by student_marks desc) as 'row_rank' from fund 
select student_id, student_stream, student_subject, student_marks, row_number()over(partition by student_stream order by student_marks desc) as 'row_num', rank()over(partition by student_stream order by student_marks desc) as 'row_rank' from fund 

select student_id, student_stream, student_subject, student_marks, row_number()over(partition by student_stream order by student_marks desc) 
as 'row_num', rank()over(partition by student_stream order by student_marks desc) as 'row_rank' from fund 

select * from(select student_id, student_stream, student_subject, student_marks, row_number()over(partition by student_stream order by student_marks desc) 
as 'row_num', rank()over(partition by student_stream order by student_marks desc) as 'row_rank' from fund) as test1 where row_rank=1

select student_id, student_stream, student_subject, student_marks, row_number()over(order by student_marks desc) 
as 'row_num', rank()over(order by student_marks desc) as 'row_rank', dense_rank() over(order by student_marks desc)as 'dense_rank' from fund 

select * from (select student_id, student_stream, student_subject, student_marks, row_number()over(partition by student_stream order by student_marks desc) 
as 'row_num', rank()over(partition by student_stream order by student_marks desc) as 'row_rank', 
dense_rank() over(partition by student_stream order by student_marks desc)as 'dense_rank' from fund) as test2 where `dense_rank` = 3




