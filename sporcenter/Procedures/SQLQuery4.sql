USE [dbspor]
GO
/****** Object:  StoredProcedure [dbo].[SearchByGender]    Script Date: 12.12.2024 03:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[SearchByGender]
    @Gender NVARCHAR(50)
AS
BEGIN
    SELECT * 
    FROM kayitbilgi
    WHERE cinsiyet = @Gender
END