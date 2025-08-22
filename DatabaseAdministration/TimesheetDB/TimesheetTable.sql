USE [TimesheetDB]
GO

/****** Table [dbo].[Timesheet] ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Timesheet](
	[TimesheetID] [int] IDENTITY(1,1) NOT NULL,
	[TeamMemberID] [int] NOT NULL,
	[WorkDate] [date] NOT NULL,
	[DayOfWeek] [nvarchar](20) NOT NULL,
	[ProjectID] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[IsBillable] [bit] NOT NULL,
	[Comments] [nvarchar](255) NULL,
	[StartTime] [time](7) NOT NULL,
	[EndTime] [time](7) NOT NULL,
	[HoursWorked] [decimal](5, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TimesheetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Timesheet]  WITH CHECK ADD FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Project] ([ProjectID])
GO

ALTER TABLE [dbo].[Timesheet]  WITH CHECK ADD FOREIGN KEY([TeamMemberID])
REFERENCES [dbo].[TeamMember] ([TeamMemberID])
GO


