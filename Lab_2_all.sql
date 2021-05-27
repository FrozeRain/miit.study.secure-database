select						/*Задание 1*/
	max(StandardCost) 
from 
	Production.ProductCostHistory;

select						/*Задание 2*/
	datediff(year, BirthDate, getdate()) as YoungEmployeeAge 
from 
	HumanResources.Employee 
where 
	BirthDate = (select max(BirthDate) from HumanResources.Employee);

select						/*Задание 3*/
	(select avg(VacationHours) from HumanResources.Employee where Gender = 'M') as MaleAvgHours,
	(select avg(VacationHours) from HumanResources.Employee where Gender = 'F') as FemaleAvgHours;

select						/*Задание 4*/
	Color 
from 
	Production.Product 
where 
	ProductID in (select ProductID from Production.Product where Size is not null and SafetyStockLevel > 0);

select						/*Задание 5*/
	ProductID, 
	DENSE_RANK() OVER (Partition by ListPrice Order by ProductID) 
from 
	Production.ProductListPriceHistory 
where 
	ListPrice < 10;
