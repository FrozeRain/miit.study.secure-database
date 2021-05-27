select										/*Задание 1*/
	p.FirstName, p.LastName, s.Bonus
from 
	Person.Person p, Sales.SalesPerson s
where 
	p.BusinessEntityID = s.BusinessEntityID;

select										/*Задание 2*/
	culture.Name, description.ProductModelID
from 
	Production.Culture culture left outer join Production.ProductModelProductDescriptionCulture description
on 
	culture.CultureID = description.CultureID 
	order by culture.Name;

select										/*Задание 3*/
	person.FirstName, 
	person.LastName, 
	case when employee.VacationHours > 0 then 'yes' else 'no' end as HasVacationHours
from 
	HumanResources.Employee employee right outer join Person.Person person 
on 
	employee.BusinessEntityID = person.BusinessEntityID;

select										/*Задание 4*/
	t.CustomerID 
from 
	Sales.SalesOrderHeader t, Sales.SalesOrderHeader mirror
where 
	t.CustomerID = mirror.CustomerID 
	and t.DueDate != mirror.DueDate 
	group by t.CustomerID;

select										/*Задание 5*/
	t.DueDate 
from 
	Sales.SalesOrderHeader t, Sales.SalesOrderHeader mirror
where 
	t.DueDate = mirror.DueDate 
	and t.CustomerID != mirror.CustomerID 
	group by t.DueDate;

select										/*Задание 6*/
	t.ProductSubcategoryID
from 
	Production.Product t, Production.Product mirror
where 
	t.ProductSubcategoryID = mirror.ProductSubcategoryID 
	and t.Color != mirror.Color 
	and t.Color like '%e%' 
	and mirror.Color like '%e%'
	group by t.ProductSubcategoryID;

select										/*Задание 7*/
	ProductID, 
	StandardCost
from 
	Production.Product
union
	select
		ProductID, 
		StandardPrice 
	from 
		Purchasing.ProductVendor;

select										/*Задание 8*/
	p.ProductID 
from 
	Production.Product p, Production.TransactionHistoryArchive a
where 
	p.ProductID != a.ProductID
	group by p.ProductID;