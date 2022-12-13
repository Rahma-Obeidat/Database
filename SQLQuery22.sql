create database Rahma13;
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
 FOREIGN KEY (ID_order) REFERENCES customers(ID)

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
 FOREIGN KEY (ID_product) REFERENCES orders(ID_order)

);
insert into product values(1,'shampo',20);
insert into product values(2,'soap',15.5);
insert into product values(3,'bag',88.5);

select * from product;

select * from product , orders;
select * from customers , orders;
select * from customers , product;

select * from customers left join orders 
on customers.ID=orders.ID_order;

select * from customers left join product
on product.product_price>20;

SELECT Customers.Fname, Orders.total_price
FROM Customers
FULL OUTER JOIN Orders ON Customers.ID=Orders.ID_order
ORDER BY Customers.Fname;

