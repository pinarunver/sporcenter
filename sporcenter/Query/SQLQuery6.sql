USE [dbspor]
GO

/****** Object:  Table [dbo].[takipspor]    Script Date: 12.12.2024 03:23:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[takipspor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[adsoyad] [nvarchar](50) NULL,
	[telno] [nvarchar](50) NULL,
	[sportur] [nvarchar](50) NULL,
	[zamanlama] [datetime] NULL,
	[uye_id] [int] NULL,
 CONSTRAINT [PK_takipspor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[takipspor]  WITH CHECK ADD  CONSTRAINT [FK_takipspor_kayitbilgi] FOREIGN KEY([uye_id])
REFERENCES [dbo].[kayitbilgi] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[takipspor] CHECK CONSTRAINT [FK_takipspor_kayitbilgi]
GO


