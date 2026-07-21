use gramaPanchayath;
create table Temporary_request(
request_id int primary key,
request_name varchar(10) not null,
request_date date not null);
insert into Temporary_request(request_id,request_name,request_date) values(1,"nandu","2007-03-03"),
(2,"siri","2007-10-10"),
(3,"pream","2007-09-09");
select*from temporary_request;
truncate table Temporary_request; 
drop table Temporary_request;
