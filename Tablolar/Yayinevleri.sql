CREATE TABLE Yayinevleri (
    YayinEviID INT PRIMARY KEY IDENTITY(1,1),
    YayinEviAdi NVARCHAR(30) NOT NULL,
    Telefon NVARCHAR(11),
    Adres NVARCHAR(20),
    Eposta NVARCHAR(50)
);
