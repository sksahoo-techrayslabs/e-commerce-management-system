insert into customer(firstname, middlename, lastname, email,dob, phone, age) values
("sobhan", "kumar", "sahoo", "sobhan@gmail.com","2003-08-16", "1234567890", 22 ),
("rakesh", "","xyz","rakesh@gmail.com", "2001-01-01", "1345678902", 24);

select* from customer;

-- ------------------------------------------ 

insert into seller(name,phone) values
("seller1", 1245678903),
("seller2",2345678901);


select * from seller;
-- ------------------------------------------ 
 insert into category(categoryname,details) values
 ("electronics","this is electronics seller"),
 ("food","this is food dseller");
 
 
  select * from category;
 -- ------------------------------------------ 
 
 insert into product(sellerid ,categoryid,productname,brand,price,stock) values
(1,1,"phone","samsung",20000,10),
(2,2,"food","basmati",3000,20);

select * from product;
-- ------------------------------------------ 
insert into cart(customerid,productid,quantity,totalitem,totalprice) values
(1,1,2,3,40000),
(2,2,1,3,3000);

select * from cart;
-- ------------------------------------------ 
insert into orderitem(productid, price,quantity)values
(1,20000,2),
(2,3000,1);

select * from orderitem;
-- ------------------------------------------ 
INSERT INTO orders (cartid,customerid,orderitemid ,ordernumber, orderprice, orderstatus)
VALUES 
(1,1,1,"or1",  40000, 'pending'),
(2,2,2,'or2', 3000, 'completed'); 


 -- drop table orders;
select * from orders;
-- ------------------------------------------ 
insert into payment(orderid,customerid,paymentmode) values
(1,1,"upi"),
(2,2,"cash");

select * from payment;
 -- drop table payment;
-- ------------------------------------------ 
insert into address(customerid, streetname,city,state,pincode)values
(1,"zxc street","cuttack","odisha","753014"),
(2,"","ahemdabad","gujurat","12345");

select * from address;
-- ------------------------------------------- 

insert into refund(orderid,productid,customerid,quantity,refundamount,refundreason,refundstatus) values
(1,1,1,2,40000,"not looking good","pending"),
(2,2,2,1,3000,"qulaity bad","completed");

select * from refund;
-- drop table refund;

-- ------------------------------------------- 

insert into  review(customerid,productid,reviewdetails,rating) values
(1,1,"not looking good",4),
(2,2,"quality not good",2);

select * from review;
-- drop table review

-- ------------------------------------------ 
-- show tables;
-- desc product;
-- show create table review;

 show databases;
 -- drop database ecommerce_mark2;
 show tables;
 show create table customer;
 desc customer;
 
 alter table customer add gender varchar(10);
 
 select * from customer;

update customer set gender="male" where customerid=1;
update customer set gender="female" where customerid=2;

-- alter table customer drop age;

alter table seller modify phone varchar(15);

insert into seller(name,phone) values("abs","34567"),("zxc","567890");
select * from seller;

select firstname,email from customer where middlename="kumar";

update product set price=50000 where productid=1;

select * from product;

delete  from review where rating<3;
select * from review;

-- inner join
-- select productname from product inner join seller on product.productid = seller.name;
select p.productname,s.name from product p join seller s on p.sellerid=s.sellerid;





-- counting orders by status and arranging it bu descending order
select orderstatus, count(orderid) as totalorders from orders group by orderstatus order by totalorders desc; 

-- counting products per seller that they have given

select sellerid , count(*) as totalproducts from product group by sellerid;