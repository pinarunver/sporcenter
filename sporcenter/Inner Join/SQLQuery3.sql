    SELECT 
        k.adsoyad, 
        k.cinsiyet, 
        k.dogumtar, 
        k.telno, 
        s.zamanlama, 
        s.sportur
    FROM 
        kayitbilgi k
    INNER JOIN 
        takipspor s ON k.adsoyad = s.adsoyad
;