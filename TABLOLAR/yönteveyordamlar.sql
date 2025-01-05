--SAKLI YORDAM: 

DELIMITER $$ 

 CREATE PROCEDURE KitapEkle( 

    IN p_KitapAdi VARCHAR(255), 

    IN p_Fiyat DECIMAL(10,2), 

    IN p_BasimYili YEAR, 

    IN p_Adet INT 

) 

BEGIN 

    INSERT INTO Kitaplar (KitapAdi, Fiyat, BasimYili) 

    VALUES (p_KitapAdi, p_Fiyat, p_BasimYili); 

    SET @KitapID = LAST_INSERT_ID(); 

    INSERT INTO Stok (StokID, Adet) 

    VALUES (@KitapID, p_Adet); 

END$$ 

DELIMITER ; 

 

--SAKLI YORDAM TEST EDİLMESİ: 

 

CALL KitapEkle('Yeni Kitap', 45.99, 2023, 100); 

--SAKLI YORDAM: 

DELIMITER $$ 

CREATE PROCEDURE IndirimEkle( 

    IN p_KitapID INT, 

    IN p_MusteriID INT, 

    IN p_StokID INT, 

    IN p_IndirimOrani DECIMAL(5,2), 

    IN p_IndirimTarihi DATE 

) 

BEGIN 

    INSERT INTO Indirimler (KitapID, MusteriID, StokID, IndirimOrani, IndirimTarihi) 

    VALUES (p_KitapID, p_MusteriID, p_StokID, p_IndirimOrani, p_IndirimTarihi); 

     IF p_IndirimOrani > 50 THEN 

        INSERT INTO LogTablosu (LogMesaji, LogTarihi) 

        VALUES ('Yüksek indirim oranı tanımlandı.', NOW()); 

    END IF; 

END$$ 

  

DELIMITER ; 

--SAKLI YORDAM TEST EDİLMESİ: 

CALL IndirimEkle(1, 2, 3, 55.00, '2025-01-01'); 

--TRİGGER : 

DELIMITER $$ 

  

CREATE TRIGGER StokGuncelleme 

AFTER INSERT ON StokHareketleri 

FOR EACH ROW 

BEGIN 

    UPDATE Stok 

    SET Adet = Adet - NEW.Satis 

    WHERE StokID = NEW.KitapID; 

     IF (SELECT Adet FROM Stok WHERE StokID = NEW.KitapID) < 0 THEN 

        SIGNAL SQLSTATE '45000' 

        SET MESSAGE_TEXT = 'Stok yetersiz!'; 

    END IF; 

END$$ 

DELIMITER ; 

 

--TRIGGER  

DELIMITER $$ 

CREATE TRIGGER MusteriSilIletisim 

AFTER DELETE ON Musteri 

FOR EACH ROW 

BEGIN 

    DELETE FROM Iletisim 

    WHERE MusteriID = OLD.MusteriID; 

END$$ 

  

DELIMITER ; 

--TRANSACTION KISMI 

START TRANSACTION; 

 BEGIN 

    UPDATE Stok 

    SET Adet = Adet - 1  

    WHERE StokID = 1;  

    IF (SELECT Adet FROM Stok WHERE StokID = 1) < 0 THEN 

        SIGNAL SQLSTATE '45000' 

        SET MESSAGE_TEXT = 'Yetersiz stok!'; 

    END IF; 

    INSERT INTO Satislar (SatisID, KitapID, SatisTarihi, Miktar, ToplamTutar) 

    VALUES (NULL, 1, CURDATE(), 1, 49.90);  

    COMMIT; 

END; 

ROLLBACK; 

UPDATE Stok SET Adet = 10 WHERE StokID = 1; 

 --TRANSACTION DENEMESİ: 

CALL KitapSat(1, 1, 49.90);   
