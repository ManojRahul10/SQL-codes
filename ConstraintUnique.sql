create table employeess(
empids int primary key,
empnames varchar(50) NOT NULL,
empemail varchar(100),
age int,
salary decimal(10,2),
departid int );

INSERT into employeess (empids,empnames, empemail,age,salary,departid) 
Values
(1,'Manoj Rahul','manojrahul@gmal.com', 21, 35000.98, 101),
(2,'Aravind','aravind@gmal.com', 28, 85000.98, 102),
(3,'Ajay','ajay@gmal.com', 24, 55000.98, 103),
(4,'Jagadish','jagadish@gmal.com', 20, 25000.98, 104), 
(5,'Surya','surya@gmal.com', 22, 15000.98, 105);   

select * from employeess;

alter table employeess
add constraint uniqueemail unique(empemail);

---------------------------
 changes the values into unique one if you insert another value with same name it will show error.
