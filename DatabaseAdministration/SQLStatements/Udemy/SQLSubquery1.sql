--[AdventureWorks2022].[HumanResources].[EmployeePayHistory]
--[Production].[Product]
--[Production].[ProductInventory]

SELECT * FROM [AdventureWorks2022].[HumanResources].[EmployeePayHistory]
WHERE BusinessEntityID IN (SELECT BusinessEntityID FROM [HumanResources].[EmployeePayHistory] WHERE Rate > 60)

--ALL TABLES GET CREATED IN DBO SCHEMA UNLESS WE CREATE A NEW SCHEMA

SELECT * FROM Employee

SELECT * FROM [AdventureWorks2022].[HumanResources].[EmployeePayHistory]
WHERE BusinessEntityID = (SELECT BusinessEntityID FROM [HumanResources].[EmployeePayHistory] WHERE Rate = 39.06)

 select * from [Production].[Product]
 where ProductID in ( select ProductID from [Production].[ProductInventory] where Quantity > 300)