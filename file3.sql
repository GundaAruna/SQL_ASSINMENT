create database Hari;

create table customer(customer_id int,cust_name varchar(30),city varchar(30),grade int,salesman_id int);

insert into customer values(3002,"Nick Rimando","New York",100,5001),( 3007,"Brad Davis","New York",200,5001),(3005,"Graham Zusi","California",200,5002),
(3008,"Julian Green","London",300,5002),( 3004,"Fabian Johnson","Paris",300,5006),(3009,"Geoff Cameron","Berlin",100,5003),
( 3003,"Jozy Altidor","Moscow",200,5007),( 3001,"Brad Guzan","London",500,5005);
select *from customer;
------------------------------------------------------------------------------------------------------------------------

create table salesman(salesman_id int,name varchar(30),city varchar(30),commission float);

insert into salesman values(5001,"James Hoog","New York",0.15),(5002,"Nail Knite","Paris",0.13),(5005,"Pit Alex","London", 0.11),
( 5006,"Mc Lyon","Paris",0.14),(5007,"Paul Adam","Rome",0.13),( 5003,"Lauson Hen","San Jose",0.12);
select *from salesman;

----------------------------------------------------------------------------------------------------------------------------------------
select c.cust_name,c.city,c.grade,s.name,s.city from customer c join salesman s on c.salesman_id=s.salesman_id where c.grade<100;


