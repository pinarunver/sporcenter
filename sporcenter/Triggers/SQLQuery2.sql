USE [dbspor]
GO
/****** Object:  Trigger [dbo].[trgekleüye]    Script Date: 12.12.2024 03:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[trgekleüye]
ON [dbo].[kayitbilgi]
AFTER INSERT
AS
BEGIN
    PRINT 'Yeni bir üye eklendi.'
END;