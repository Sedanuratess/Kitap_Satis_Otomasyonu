CREATE TABLE Indirimler (
    IndirimID INT PRIMARY KEY IDENTITY(1,1),
    MusteriID INT,
    SatisID INT,
    IndirimTutari DECIMAL(10, 2),
    IndirimTarihi DATETIME NOT NULL

);
