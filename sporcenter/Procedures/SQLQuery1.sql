USE [dbspor]
GO
/****** Object:  StoredProcedure [dbo].[FilterKayitbilgiAdsoyad]    Script Date: 12.12.2024 03:10:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[FilterKayitbilgiAdsoyad]
    @FilterValue NVARCHAR(100)
AS
BEGIN
    SELECT id,adsoyad,sifrebelirle,Telno,cinsiyet,dogumtar
    FROM kayitbilgi
    WHERE adsoyad LIKE  @FilterValue + '%'
END
