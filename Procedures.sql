DELIMITER &&
CREATE PROCEDURE bish()
begin
 select * from bank_details;
end &&

call bish()

DELIMITER &&
CREATE PROCEDURE balance_jobrole1(In management varchar(30))
begin
 select balance from bank_details where job = management;
end &&

call balance_jobrole1('technician')

DELIMITER &&
CREATE PROCEDURE edu_job(In v1 varchar(30), in v2 varchar(30))
begin
 select * from bank_details where education = v1 and job = v2;
end &&

call edu_job('secondary' , 'technician')


