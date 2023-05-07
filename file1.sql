//creating a database

create database online_consultation_and_therapy;


//creating doctor table
create table Doctor(doctor_id int primary key,name varchar(250) not null,specialization varchar(250) not null);




//creating Patient table
create table Patient(patient_id int primary key,name varchar(250) not null,email varchar(250) not null,phone varchar(250) not null);




//creating appointments table
create table Appointments(appointment_id int primary key,doctor_id int not null,patient_id int not null,date1 date not null,start_time time not null,end_time time not null,
status varchar(50) not null,foreign key(appointment_id) references Doctor(doctor_id),
foreign key(patient_id) references Patient(patient_id));



//creating reviews table
create table Reviews(review_id int primary key,patient_id int not null,doctor_id int not null,rating int not null,comment varchar(250) not null,foreign key(patient_id) references Patient(patient_id),foreign key(doctor_id)  references Doctor(doctor_id));



//insering values for the above tables
insert into Doctor values(1,"Dr.Aruna","Therapist"),(2,"Dr.Manjula","Psychiatrist");
insert into Patient values(21,"Amar","amar@gmail.com","987654456"),(22,"Bharat","bharat@gmail.com","9345609888");
insert into Appointments values(31,1,21,"1995-06-09","10:00:00","11:00:00","Scheduled"),(32,2,22,"1999-06-24","10:30:00","11:00:00","Scheduled");
insert into Reviews values(41,21,1,4,"Dr.Aruna is Great Doctor"),(42,22,2,5,"Dr.Manjula gives great advises");
