USE [dbspor]
GO
/****** Object:  StoredProcedure [dbo].[SearchByPhone]    Script Date: 12.12.2024 03:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[SearchByPhone]
    @PhoneNumber NVARCHAR(50)
AS
BEGIN
    SELECT * 
    FROM kayitbilgi
    WHERE telno = @PhoneNumber
END