USE [dbspor]
GO
/****** Object:  StoredProcedure [dbo].[FilterKayitbilgiHarfegöreara]    Script Date: 12.12.2024 03:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[FilterKayitbilgiHarfegöreara]
    @FilterValue NVARCHAR(100)
AS
BEGIN
    SELECT id,adsoyad,sifrebelirle,Telno,cinsiyet,dogumtar
    FROM silinenkayit
    WHERE adsoyad LIKE  '%'+@FilterValue + '%'
END