Query to create the table
-->create table SampleTable–Worker(
OrderId varchar(20),
FIRST_NAME varchar(20),
LAST_NAME varchar(20),
SALARY int,
JOINING_DATE varchar(20),
DEPARTMENT varchar(20)
);
-->To Select and Insert the Values
select * from sakila.sampletable–worker;
insert into sampletable–worker values("001",'Monika','Arora',100000,"2014-02-20 09:00:00","HR");
insert into sampletable–worker values("002",'Niharika','Verma',80000,"2014-06-11 09:00:00",'Admin');
insert into sampletable–worker values("003",'Vishal','Singhal',300000,"2014-02-20 09:00:00",'HR');
insert into sampletable–worker values("004",'Amitabh','Singh',500000,"2014-02-20 09:00:00",'Admin');
insert into sampletable–worker values("005",'Vivek','Bhati',500000,"2014-06-11 09:00:00",'Admin');
insert into sampletable–worker values("006",'Vipul','Diwan',200000,"2014-06-11 09:00:00",'Account');
insert into sampletable–worker values("007",'Satish','Kumar',75000,"2014-01-20 09:00:00",'Account');
insert into sampletable–worker values("008",'Geetika','Chauchan',90000,"2014-04-11 09:00:00",'Admin');

-->Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.
select NAME ,FIRST_NAME ,LAST_NAME, CONCAT_WS(FIRST_NAME," ",LAST_NAME)  as NAME from sampletable–worker1;
-->CREATED ANOTHER TABLE  AND INSERTED VALUES
 create table SampleTable–Worker1(
FIRST_NAME varchar(20),
LAST_NAME varchar(20),
FULL_NAME varchar(20)
);
insert into sampletable–worker1 values('Monika','Arora',"");
insert into sampletable–worker1 values('Niharika','Verma',"");
insert into sampletable–worker1 values('Vishal','Singhal',"");
--> Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME. A space char should separate them.
select upper(SUBSTRING(FULL_NAME,1))  as Name from sampletable–worker1;
-->Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.

select * from sakila.sampletable–worker order by FIRST_NAME ,LAST_NAME asc;
select * from sampletable–worker order by DEPARTMENT desc ;

---> Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.

select*  from sampletable–worker where DEPARTMENT="ADMIN" ;

-->Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.
SELECT *  FROM sampletable–worker WHERE FIRST_NAME="Vipul" AND LAST_NAME="Satish";
NO DATA IS THERE RELATED TO THIS AS THE CONDITION IS AND(BOTH HAS TO BE TRUE)
-->6. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.
SELECT FIRST_NAME ,LAST_NAME FROM sakila.sampletable–worker WHERE FIRST_NAME LIKE '%a';
--
--Q-7. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
SELECT FIRST_NAME ,LAST_NAME FROM sakila.sampletable–worker WHERE FIRST_NAME LIKE '%h' and length(6);
--
--Q-8. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.
--
--
--Q-9. Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.
select upper(SUBSTRING(FULL_NAME,1))  as Name from sampletable–worker1;
--
--Q-10. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.
SELECT *  FROM sampletable–worker WHERE SALARY BETWEEN 100000 and 500000;