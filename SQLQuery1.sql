create database Rahma;
create table customers(
ID int primary key,
Fname varchar(20),
Lname varchar(20),
phone int 


);

create table orders(
ID_order int primary key,
number_of_product int,
total_price float,
date_ofOrder date


);
insert into customers values(1,'rahma','obeidat',077178);
insert into customers values(2,'batool','aldalki',07588);
insert into customers values(3,'rama','shararah',07788);
select * from customers;


insert into orders values(1,20,15.5,'2020-12-12');
insert into orders values(2,22,200.5,'2020-12-19');
insert into orders values(3,50,15.5,'2020-10-12');

select * from orders;

create table product(
ID_product int primary key,
product_name varchar(50),
product_price float

);
insert into product values(1,'shampo',20);
insert into product values(2,'soap',15.5);
insert into product values(3,'bag',88.5);

select * from product;

create table Employees(
ID_Emp int primary key,
f_name char(20),
l_name char(20),
salary float

);

insert into Employees values(1,'rahma','obeidat',2000);
insert into Employees values(2,'rama','shararah',2000);
insert into Employees values(3,'batool','aldelki',2000);
select * from Employees;