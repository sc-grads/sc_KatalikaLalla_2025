/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [BusinessEntityID]
      ,[RateChangeDate]
      ,[Rate]
      ,[PayFrequency]
      ,[ModifiedDate]
  FROM [AdventureWorks2022].[HumanResources].[EmployeePayHistory]

  -------------------------------

  select max(rate) from [AdventureWorks2022].[HumanResources].[EmployeePayHistory]

 --------------------------------
  select min(rate) from [AdventureWorks2022].[HumanResources].[EmployeePayHistory]

 -------------------------

  select count(rate) from [AdventureWorks2022].[HumanResources].[EmployeePayHistory]
 ---------------------------------------
  select count(rate) from [AdventureWorks2022].[HumanResources].[EmployeePayHistory]

  ------------------------------

  print upper('hehetgtAA')

  -------

  print lower('hehetgtAA')

   ------


  print convert(int,15.56)

   ------

  print getdate()

   -----
  print day(getdate())

  ------

  print month(getdate())


  --------

  USE [AdventureWorks2022]
GO

/****** Object:  Table [dbo].[FunctionEmployee]    Script Date: 10/24/2022 10:12:17 AM ******/




CREATE TABLE [dbo].[FunctionEmployee](
	[EmpID] [int] NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Salary] [int] NULL,
	[Address] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


---------------------------------------

insert into [FunctionEmployee] ([EmpID],[FirstName],[LastName],[Salary],[Address]) values (1,'Abbas','Mehmood', 20000, 'Delhi')
insert into [FunctionEmployee] ([EmpID],[FirstName],[LastName],[Salary],[Address]) values (2,'Imran','Afzal', 50000, 'Delhi')
insert into [FunctionEmployee] ([EmpID],[FirstName],[LastName],[Salary],[Address]) values (3,'James','Dino', 90000, 'Delhi')
insert into [FunctionEmployee] ([EmpID],[FirstName],[LastName],[Salary],[Address]) values (4,'Jaga','Babu', 70000, 'Delhi')

-------------------------------------------
SELECT * FROM FunctionEmployee
-------------------------------------------

Create function fnGetEmpFullName
( @FirstName varchar(50), @LastName varchar(50))
returns varchar(101)
As
begin
return (select @FirstName + ''+@LastName);
end

select dbo.fnGetEmpFullName (FirstName,LastName) as FullName , Salary from FunctionEmployee

---------------------------------------------------------------------------------------------

create function fnGetEmployee()
returns Table
As
return (select * from FunctionEmployee)

SELECT * FROM dbo.FunctionEmployee 

----------------------------------------------------------
create function fnGetMulEmployee()
returns @Emp Table
(
Empid int,
FirstName varchar(50),
Salary int
)
As
Begin
Insert into @Emp Select e.EmpID,e.FirstName,e.Salary from FunctionEmployee e;
--Now update salary of first employee
update @Emp set Salary=25000 where EmpID=1;
--It will update only in @Emp table not in original Employee table
return
end

SELECT * FROM dbo.fnGetMulEmployee()