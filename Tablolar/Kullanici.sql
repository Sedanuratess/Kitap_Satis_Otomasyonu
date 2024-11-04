CREATE TABLE Kullanici (
    KullaniciID INT PRIMARY KEY IDENTITY(1,1),
    KullaniciAdi NVARCHAR(50) NOT NULL,
    Parola NVARCHAR(50) NOT NULL,
    YetkiSeviyesi INT
);
