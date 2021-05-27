select								/*Задание 1*/
	* 
from 
	Production.ProductCostHistory;

select								/*Задание 2*/
	ProductModelID, 
	Name as [Name] 
from 
	Production.ProductModel;

select								/*Задание 3*/
	CurrencyRateId, 
	CurrencyRateDate, 
	FromCurrencyCode, 
	ToCurrencyCode, 
	AverageRate, 
	EndOfDayRate 
from 
	Sales.CurrencyRate
where
	AverageRate between 1 and 10;

select								/*Задание 4*/
	MinOrderQty,
	MaxOrderQty,
	OnOrderQty
from 
	Purchasing.ProductVendor
where OnOrderQty is not null;

select								/*Задание 5*/
	LocationID, 
	ScheduledStartDate, 
	ScheduledEndDate 
from 
	Production.WorkOrderRouting 
where 
	LocationID = 45;

select								/*Задание 6*/
	CardType, 
	CardNumber, 
	ExpMonth, 
	ExpYear 
from 
	Sales.CreditCard 
where 
	ExpMonth in (4, 6, 8, 10);

select								/*Задание 7*/
	PersonType, 
	FirstName, 
	isnull(MiddleName, '---') as MiddleName, 
	LastName 
from 
	Person.Person;

select								/*Задание 8*/
	ProductID, 
	Name as [Name], 
	coalesce(convert(varchar(10), Weight), ProductLine, 'UNKNOWN') as Measurement 
from 
	Production.Product;

select								/*Задание 9*/
	EmailAddressID, 
	EmailAddress 
from 
	Person.EmailAddress 
order by EmailAddress desc;

select								/*Задание 10*/
	BusinessEntityID, 
	Rate, 
	PayFrequency, 
	replace(PayFrequency, '2', 'NULL') as OtherPayFrequency 
from 
	HumanResources.EmployeePayHistory;


