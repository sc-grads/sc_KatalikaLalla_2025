USE [OurFirstDatabase]
GO

/****** Object:  Table [dbo].[personalInfo]    Script Date: 2025/04/24 09:02:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[personalInfo](
	[firstName] [varchar](50) NULL,
	[lastName] [varchar](50) NULL,
	[dob] [datetime] NULL,
	[ID] [int] NOT NULL
) ON [PRIMARY]
GO


