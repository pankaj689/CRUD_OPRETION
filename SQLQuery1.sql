use AdventureWorks2017
go

select * from Person.Person where FirstName = 'Ken';

select Top 20 * from Person.Person where BusinessEntityID>20;


use employee
go
select * from department;
select * from emp;
select * from tableEmployee;

Alter table  department
add deptID int;

update  department
set deptID = 1
where dept='IT';

Select name,  dept ,
   Case dept
   when 'IT' then 'INFORMRTION TECHNOLIGY'
   when 'HR' then 'HUMAN RESOURCE'
   when 'FD' then 'FINANCE DEPARTMENT'
   END As 'dept long NAME'

from department;

select convert(datetime,'2020-01-01') as TextTODateTime
select CONVERT(int,5.65)

select deptID from department
INNER JOIN tableEmployee
ON department.deptiD=tableEmployee.deptID;

select * from Production.Product;
select * from sales.SalesOrderDetail

select * from Production.Product 
Left Join sales.SalesOrderDetail 
on Product.ProductID=SalesOrderDetail.ProductID;

select Name ,SalesOrderDetailID,UnitPrice from Production.Product AS P
left Join sales.SalesOrderDetail AS S
on P.ProductID=S.ProductID
where SalesOrderDetailID is Null

select Name ,SalesOrderDetailID,UnitPrice from Production.Product AS P
Right Join sales.SalesOrderDetail AS S
on P.ProductID=S.ProductID
where SalesOrderDetailID is Null