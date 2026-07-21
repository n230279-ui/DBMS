 use GramaPanchayath;
 create table Certificate_application(
application_id int primary key,
citizen_id int not null,
certificate_name varchar(100) not null,
application_date date not null,
purpose varchar(200) not null,
application_status varchar(30) not null,
fee_paid decimal(8,2) not null,
reference_number varchar(30) unique not null);

insert into Certificate_application(application_id ,citizen_id,certificate_name,application_date,purpose,application_status,fee_paid,reference_number)
values(1001,101,"recidentialcertificate","2026-07-01","bank account documentation","submitted",30.00,"gp20260001"),
(1002,102,"family memeber certificate","2026-07-02","welfare scheme application","under review",40.00,"gp2026002"),
(1003,103,"proprrty certificate","2026-07-03","property documentation","submitted",50.00,"gp2026003"),
(1004,104,"recidentialcertificate","2026-07-04"," collage admission","aproved",30.00,"gp2026004"),
(1005,105,"non-dues certificate","2026-07-05","local service requirement","under review",25.00,"gp2026005"),
(1006,106,"birth record request","2026-07-06","personal documentation","rejected",20.00,"gp2026006");
 update  Certificate_application set application_status="under review" where application_id=1001;
 update  Certificate_application set application_status="aproved" where application_id=1002;
 alter table Certificate_application add issued_date date;
 alter table Certificate_application modify  purpose varchar(400);
select * from Certificate_application;

 -- part g
insert into Certificate_application(application_id ,citizen_id,application_date,purpose,application_status,fee_paid,reference_number)
values(1009,109,"2026-07-01","bank account documentation","submitted",30.00,"gp20260009");
-- certificate name doesnt have default value
-- same reference number
insert into Certificate_application(application_id ,citizen_id,certificate_name,application_date,purpose,application_status,fee_paid,reference_number)
values(10010,1010,"pan","2026-01-01","bank account documentation","submitted",30.00,"gp20260001");
-- duplicate entry

-- foreign key
insert into Certificate_application(application_id ,certificate_name,application_date,purpose,application_status,fee_paid,reference_number)
values(10011,"recidentialcertificate","2026-07-01","bank account documentation","submitted",30.00,"gp20260001");
