CREATE TABLE Raporlar (
    RaporID INT PRIMARY KEY IDENTITY(1,1),
    RaporTipi NVARCHAR(50),
    OlusturmaTarihi DATETIME NOT NULL,
    Aciklama TEXT
);
