USE [dbspor]
GO
/****** Object:  StoredProcedure [dbo].[FilterTakipSporHarfegöreara]    Script Date: 12.12.2024 03:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[FilterTakipSporHarfegöreara]
    @FilterValue NVARCHAR(100)
AS
BEGIN
    SELECT id,adsoyad,telno,sportur,zamanlama
    FROM takipspor
    WHERE adsoyad LIKE  '%'+@FilterValue + '%'
END
