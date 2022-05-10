use AdventureWorks2017
go

-- UNION
select CurrencyCode
from Sales.CountryRegionCurrency
UNION ALL
select CurrencyCode
from sales.Currency

--INtrsect
select CurrencyCode
from Sales.CountryRegionCurrency
INTERSECT
select CurrencyCode
from sales.Currency

select JobTitle
from HumanResources.Employee
where Gender='M'
INTERSECT
select JobTitle
from HumanResources.Employee
where Gender='F'