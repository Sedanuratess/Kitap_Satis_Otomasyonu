CREATE TABLE StokHareketleri (
    HareketID INT PRIMARY KEY IDENTITY(1,1),
    KitapID INT,
    HareketTipi VARCHAR(50) CHECK (HareketTipi IN ('Giris', 'Cikis')),
    Miktar INT,
    Tarih DATETIME NOT NULL
);
