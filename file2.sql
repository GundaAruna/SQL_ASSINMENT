create database Company;
create table Contact(Id int ,Email varchar(30),fname varchar(30),lname varchar(30),Company varchar(4),Active_flag int,opt_out int);
insert into Contact values(123,"a@a.com","Kian","Seth","ABC",1,1);
insert into Contact values(133,"b@b.com","Neha","Seth","ABC",1,0),(234,"c@c.com","Peru","Malik","CDF",0,0),(342,"d@d.com","Sid","Maan","TFG",1,0);
select *from Contact;




------------------------------------------------
select *from Contact where Active_flag=1;

-------------------------------------------------
update Contact set Active_flag=0 where opt_out=1;

----------------------------------------------------
delete from Contact where Company="ABC";

-------------------------------------------------------------
insert into Contact values(658,"mili@gmail.com","mili","Malik","DGH",1,1);

--------------------------------------------------------------------
select distinct(Company) from Contact;

-----------------------------------------------------------
update Contact set fname="niti" where fname="mili";
