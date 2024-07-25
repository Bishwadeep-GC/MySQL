create database if not exists online_retail;
use online_retail;
create table if not exists retail(
	InvoiceNo int not null,
	StockCode varchar(30) not null,
	`Description` varchar(100) not null,
	Quantity int not null,
	InvoiceDate datetime,
	UnitPrice decimal(30,3) not null,
	CustomerID int not null,
	Country varchar(40) not null)
    
    select * from retail
    
use cvsales
select * from salesdatas

Delimiter &&
Create function test(a int)
returns int
deterministic
begin
	declare b int;
	set b = a+ 10;
	return b;
end &&

select test(29)
select test(quantity) from salesdatas

delimiter &&
create function pro(profit int, discount int)
returns int
deterministic
begin
declare prof int;
set prof = profit - discount;
return prof;
end &&
select profit, discount, pro(profit, discount) from salesdatas

delimiter &&
create function final(profit decimal(20,6), discount decimal(20,6), sales decimal(20,6))
returns int
deterministic
begin
declare overall int;
set overall = profit - sales * discount;
return overall;
end &&

select sales, profit, discount, final(sales, profit, discount) from salesdatas

delimiter &&
create function con(a int)
returns varchar(30)
deterministic
begin
declare str varchar(30);
set str= a;
return str;
end &&

select quantity, con(quantity) from salesdatas

delimiter &&
create function mark1(sales int)
returns varchar(30)
deterministic
begin
declare c varchar(30);
if sales <100 then
	set c = 'super affordable';
elseif sales>=100 and sales<300 then
	set c = 'affordable';
elseif sales>=300 and sales<600 then
	set c = 'easily affordable';
else set c = 'expensive';
end if;
return c;
end&&	

select mark1(400)

create table loop_table(val int)


Delimiter $$
create procedure insert_data()
Begin
set @var  = 10 ;
generate_data : loop
insert into loop_table values (@var);
set @var = @var + 1  ;
if @var  = 100 then 
	leave generate_data;
end if ;
end loop generate_data;
End $$

call insert_data()

select * from loop_table



