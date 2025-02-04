USE [dbspor]
GO

/****** Object:  Table [dbo].[yonetici_bilgi]    Script Date: 11.12.2024 16:01:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[yonetici_bilgi](
	[ýd] [int] IDENTITY(1,1) NOT NULL,
	[kullanici_adi] [nvarchar](50) NULL,
	[sifre] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ýd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


