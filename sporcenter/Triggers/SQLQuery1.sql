USE [dbspor]
GO
/****** Object:  Trigger [dbo].[trg_InsertSilinenUyeler]    Script Date: 12.12.2024 03:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[trg_InsertSilinenUyeler]
ON [dbo].[kayitbilgi]
AFTER DELETE
AS
BEGIN
    INSERT INTO silinenkayit(id, adsoyad, cinsiyet, dogumtar, silinmetarihi)
    SELECT 
        d.id, d.adsoyad, d.cinsiyet, d.dogumtar, GETDATE()
    FROM deleted d
    WHERE NOT EXISTS (
        SELECT 1 FROM silinenkayit WHERE silinenkayit.id = d.id
    );
END;