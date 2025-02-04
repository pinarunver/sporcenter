USE [dbspor]
GO

/****** Object:  Table [dbo].[silinenkayit]    Script Date: 11.12.2024 16:02:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[silinenkayit](
	[id] [int] NOT NULL,
	[adsoyad] [nvarchar](50) NULL,
	[dogumtar] [nvarchar](50) NULL,
	[cinsiyet] [nvarchar](10) NULL,
	[telno] [nvarchar](50) NULL,
	[sifrebelirle] [nvarchar](50) NULL,
	[silinmetarihi] [datetime] NULL,
 CONSTRAINT [PK_silinenkayit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


