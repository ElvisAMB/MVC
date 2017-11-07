USE [TiendaDB]
GO

ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [DF_Employee_Date]
GO

/****** Object:  Table [dbo].[Employee]    Script Date: 7/11/2017 16:09:53 ******/
--DROP TABLE [dbo].[Employee]
--GO

/****** Object:  Table [dbo].[Employee]    Script Date: 7/11/2017 16:09:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NULL,
	[Age] [int] NULL,
	[State] [varchar](50) NULL,
	[Country] [varchar](100) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_Date]  DEFAULT (getdate()) FOR [Date]
GO


