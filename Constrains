Constrains: used to limit the type of data that can go into a table.


1. Not Null
2. Unique
3. Primary key
4. Foreign key
5. Check
6. Default

Here foreign key is child and primary key in parent or reference


------------------------------------------------------------------------------------------------
# Primary Key vs Foreign Key in SQL
   
**Primary Key:**
- Uniquely identifies each record in a table
- Cannot contain NULL values
- Must be unique for each record
- Only one primary key per table (though it can consist of multiple columns)
- Creates a clustered index by default (in many database systems)
- Example: `customer_id` in a Customers table


**Foreign Key:**
- References a primary key in another table
- Creates a relationship between two tables
- Can contain NULL values (unless constrained otherwise)
- Can have multiple foreign keys in a table
- Used to maintain referential integrity
- Example: `customer_id` in an Orders table referencing the Customers table


**Key Differences:**
- Primary keys identify records within their own table, while foreign keys reference records in other tables
- Primary keys enforce uniqueness, foreign keys enforce relationships
- A table must have a primary key, but foreign keys are optional
- Foreign keys can reference their own table (self-referencing)



----------------------------------------------------------------------------------
create database constrains;
use constrains;

create table dept(
deptid int primary key,
deptname varchar(30));

create table emp(
empid int primary key,
name varchar(20),
deptid int,
foreign key(deptid) references dept(deptid));
-------------------------------------------------------------------------

Real Example:


create database constrains;
use constrains;

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
add constraint checkage Check (age>=18);

update employeess set age=19 where empids= 4; 

alter table employeess
add constraint uniqueemail unique(empemail);

insert into employeess(empids,empnames, empemail,age,salary,departid)
values
(6,'shabu','surya@gmail.com',21,25000.88, 106);

insert into employeess(empids,empnames, empemail,age,salary,departid)
values
(7,'gowtham','gowtham@gmail.com',20,25000.88, 107);

insert into employeess(empids,empnames, empemail,age,salary,departid)
values
(8,'','null@gmail.com',20,25000.88, 108);
update employeess set empnames='dharsh' where empids=8;

ALTER TABLE employeess
ADD CONSTRAINT def_salary DEFAULT 30000.00 FOR salary;

insert into employeess(empids,empnames, empemail,age,departid)
values
(9,'vicky','vicky@gmail.com',21, 109);
