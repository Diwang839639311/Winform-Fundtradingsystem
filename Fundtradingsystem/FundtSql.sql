USE [SqlSugarDemo]
GO
/****** Object:  Table [dbo].[Handle]    Script Date: 2020/2/14 17:22:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Handle](
	[Id] [uniqueidentifier] NOT NULL,
	[Afactory] [nvarchar](50) NULL,
	[Bfactory] [nvarchar](50) NULL,
	[Cfactory] [nvarchar](50) NULL,
	[Dfactory] [nvarchar](50) NULL,
 CONSTRAINT [PK_Handle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2020/2/14 17:22:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [uniqueidentifier] NOT NULL,
	[Phonenum] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Createtime] [datetime] NOT NULL,
	[Nicky] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Users__3214EC076789B7C6] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Handle] ADD  CONSTRAINT [DF_Handle_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Id__38996AB5]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Createtim__398D8EEE]  DEFAULT (getdate()) FOR [Createtime]
GO
