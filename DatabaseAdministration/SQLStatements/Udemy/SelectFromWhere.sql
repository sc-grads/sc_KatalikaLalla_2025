USE[AdventureWorks2022]

SELECT * FROM Person.Address

SELECT addressid,city,modifieddate from [Person].[Address]

SELECT city,addressid,modifieddate from [Person].[Address]

SELECT TOP 10 * FROM [Person].[Address]

SELECT * FROM Person.Address WHERE PostalCode = '98011'

SELECT * FROM Person.Address WHERE PostalCode != '98011' -- 19588

SELECT * FROM Person.Address WHERE PostalCode <> '98011' --This statement means 'does not equal' as well

SELECT count(*) FROM Person.Address WHERE PostalCode <> '98011' --19588

SELECT * FROM Person.Address WHERE ModifiedDate <= '2013-11-08 00:00:00.000'

SELECT * FROM [Person].[Person] WHERE FirstName LIKE '%ew'

SELECT * FROM [HumanResources].[EmployeePayHistory]

SELECT MAX(Rate) As PayRate FROM [HumanResources].[EmployeePayHistory]

SELECT Min(Rate) As [Min Pay Rate] FROM [HumanResources].[EmployeePayHistory]

SELECT * FROM [Production].[ProductCostHistory] WHERE Startdate = '2013-05-30 00:00:00.000'

SELECT * FROM [Production].[ProductCostHistory] WHERE Startdate = '2013-05-30 00:00:00.000' and StandardCost >= 200.00

SELECT * FROM [Production].[ProductCostHistory] WHERE Startdate = '2013-05-30 00:00:00.000' and StandardCost >= 200.00 OR ProductID > 800

SELECT * FROM [Production].[ProductCostHistory] WHERE ProductID in (802,803,804,900)

SELECT * FROM [Production].[ProductCostHistory] WHERE EndDate is NULL

SELECT * FROM [Production].[ProductCostHistory] WHERE EndDate is not NULL

------------------------------------------------------------------------------------------

SELECT * FROM [HumanResources].[EmployeePayHistory] order by rate 

SELECT * FROM [HumanResources].[EmployeePayHistory] order by rate ASC --ascending

SELECT * FROM [HumanResources].[EmployeePayHistory] order by rate DESC --descending

SELECT * FROM [HumanResources].[EmployeePayHistory] where ModifiedDate >= '2010-06-30 00:00:00.000' order by ModifiedDate DESC 

SELECT * FROM [HumanResources].[EmployeePayHistory] where Year(ModifiedDate) >= '2014' order by ModifiedDate DESC

------------------------------------------------------------------------------------------

SELECT count(*) FROM Person.Address WHERE PostalCode = '98011' --26

SELECT * FROM Person.Address WHERE PostalCode = '98011' --26

SELECT count(*) FROM Person.Address WHERE PostalCode = '98225' --213

SELECT count(*) As NoOfAddresses, PostalCode FROM Person.Address group by PostalCode

SELECT count(*) City,PostalCode FROM Person.Address group by City,PostalCode order by postalcode desc

------------------------------------------------------------------------------------------

select * from [Production].[Product]

SELECT count(1) As CountOfProduct,Color FROM [Production].[Product] where color = 'yellow' group by Color --36

SELECT count(1) As CountOfProduct,Color FROM [Production].[Product] group by Color Having Color = 'yellow'

SELECT count(1) As CountOfProduct,Color,Size FROM [Production].[Product] group by Color, Size Having Size >= '44'
