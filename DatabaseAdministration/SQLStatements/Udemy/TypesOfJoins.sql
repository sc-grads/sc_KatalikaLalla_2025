use OurFirstDatabase
go

CREATE TABLE [dbo].[Course](
	[CourseID] [int] NULL,
	[RollNO] [int] NULL
) ON [PRIMARY]

GO

----------------------------------------------------------

CREATE TABLE [dbo].[Student](
	[RollNo] [int] NOT NULL,
	[StudentName] [nvarchar](50) NULL,
	[StudentCity] [nvarchar](20) NULL,
	[StudentPhoneNo] [nvarchar](50) NULL,
	[StuentAge] [int] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[RollNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
--------------------------------------------------------
select * from [dbo].[Student]
-----------------------------------------------------
select * from [dbo].[Course]
 ------------------------------------------------

select * from student s
inner join course c 
on s.rollno = c.rollno


-------------------------------------------

select s.RollNo,s.StudentName,c.CourseID from [dbo].[Student] s
inner join [dbo].[Course] c 
on s.RollNo = c.RollNO

----------------------------------------------------

select s.RollNo,s.StudentName,c.CourseID from [dbo].[Student] s
join [dbo].[Course] c 
on s.RollNo = c.RollNO

-----------------------------------------------------------

select s.RollNo,s.StudentName,c.CourseID from [dbo].[Student] s
left join [dbo].[Course] c 
on s.RollNo = c.RollNO


-------------------------------------------------------------

select s.RollNo,s.StudentName,c.CourseID from [dbo].[Student] s
right join [dbo].[Course] c 
on s.RollNo = c.RollNO

----------------------------------------------------

select s.RollNo,s.StudentName,c.CourseID from [dbo].[Student] s
full join [dbo].[Course] c 
on s.RollNo = c.RollNO