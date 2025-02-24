USE [dbspor]
GO
/****** Object:  Trigger [dbo].[updatetelno]    Script Date: 12.12.2024 03:09:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[updatetelno]
ON [dbo].[kayitbilgi]
AFTER UPDATE
AS
BEGIN
    -- Güncellenen kayıtları mevcut satır üzerinde güncellemek
    IF UPDATE(telno)
    BEGIN
        -- Eski veriyi değiştirmek için sadece hedef sütunları güncelleyin
        UPDATE k
        SET 
            k.adsoyad = i.adsoyad,
            k.telno = i.telno,
            k.cinsiyet = i.cinsiyet,
            k.dogumtar = i.dogumtar,
            k.sifrebelirle = i.sifrebelirle
        FROM kayitbilgi k
        INNER JOIN inserted i ON k.id = i.id
    END
END
