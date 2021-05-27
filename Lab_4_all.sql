select														/*Задание 1*/
	product.ProductID, product.Name, product.StandardCost
from
	Production.Product product
where
	product.StandardCost > (
		select 
			avg(avgCost.StandardCost) 
		from 
			Production.Product avgCost 
		where 
			avgCost.StandardCost != 0
		);

select														/*Задание 2*/
	count(product.ProductID)
from
	Production.Product product
where
	product.StandardCost > (
		select 
			avg(avgCost.StandardCost) 
		from 
			Production.Product avgCost 
		where 
			avgCost.StandardCost != 0
		);

select														/*Задание 3*/
	person.FirstName, person.LastName 
from 
	Person.Person person
where
	person.BusinessEntityID = (
		select 
			emp.BusinessEntityID 
		from 
			HumanResources.EmployeeDepartmentHistory emp
		where
			emp.EndDate = (
				select 
					max(eDate.EndDate) 
				from 
					HumanResources.EmployeeDepartmentHistory eDate
				where 
					eDate.EndDate is not null
				)
		);
		
select														/*Задание 4*/
	category.Name, category.Size, category.ProductSubcategoryID
from
	Production.Product category 
where 
	ProductSubcategoryID is not null
	and (
		select
			count(size2count.Size)
		from
			(
				select 
					sizes.Size
				from
					Production.Product sizes
				where
					sizes.ProductSubcategoryID = category.ProductSubcategoryID
				group by sizes.Size
			) size2count
		) < 7;

select														/*Задание 5*/
	category.Name, category.Color, category.ProductSubcategoryID
from
	Production.Product category
where
	category.ProductSubcategoryID is not null
	and (
		select
			count(color2count.Color)
		from
			(
				select 
					colors.Color
				from
					Production.Product colors
				where
					colors.ProductSubcategoryID = category.ProductSubcategoryID
				group by colors.Color
			) color2count
		) < 2;