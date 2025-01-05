

YAZARLAR TABLOSU:

CREATE TABLE yazarlar ( 

    YazarID INT PRIMARY KEY , 

    YazarAdi VARCHAR(50) NOT NULL 

); 

PERSONEL TABLOSU: 

CREATE TABLE Personel ( 

    PersonelID INT PRIMARY KEY , 

    PersonelAdi VARCHAR(255) NOT NULL, 

    YetkiSeviyesi VARCHAR(50) NOT NULL 

); 

YAYINEVİ TABLOSU: 

CREATE TABLE YayinEvi ( 

    YayinEviID INT PRIMARY , 

    YayinEviAdi VARCHAR(255) NOT NULL, 

    Telefon VARCHAR(15), 

    Adres TEXT, 

    EPosta VARCHAR(255) 

); 

KATEGORİ TABLOSU: 

CREATE TABLE Kategori ( 

    KategoriID INT PRIMARY KEY , 

    KategoriAdi VARCHAR(255) NOT NULL 

); 

STOK TABLOSU: 

CREATE TABLE Stok ( 

    StokID INT PRIMARY KEY , 

    Adet INT NOT NULL 

); 

KİTAPLAR TABLOSU: 

CREATE TABLE Kitaplar ( 

    KitapID INT PRIMARY KEY , 

    KitapAdi VARCHAR(255) NOT NULL, 

    Fiyat DECIMAL(10, 2) NOT NULL, 

    BasimYili YEAR NOT NULL 

); 

MÜŞTERİ TABLOSU: 

CREATE TABLE Musteri ( 

    MusteriID INT PRIMARY KEY , 

    AdiSoyadi VARCHAR(255) NOT NULL, 

    Telefon VARCHAR(15), 

    EPosta VARCHAR(255) 

); 

STOK HAREKETLERİ: 

CREATE TABLE StokHareketleri ( 

    HareketID INT PRIMARY KEY , 

    YazarID INT NOT NULL, 

    KategoriID INT NOT NULL, 

    KitapID INT NOT NULL, 

    Alis INT NOT NULL, 

    Satis INT NOT NULL, 

    FOREIGN KEY (YazarID) REFERENCES Yazarlar(YazarID), 

    FOREIGN KEY (KategoriID) REFERENCES Kategori(KategoriID), 

    FOREIGN KEY (KitapID) REFERENCES Kitaplar(KitapID) 

); 

ESERLERİ TABLOSU: 

CREATE TABLE Eserleri ( 

    EserID INT PRIMARY KEY , 

    YazarID INT NOT NULL, 

    KitapID INT NOT NULL, 

    KategoriID INT NOT NULL, 

    FOREIGN KEY (YazarID) REFERENCES Yazarlar(YazarID), 

    FOREIGN KEY (KitapID) REFERENCES Kitaplar(KitapID), 

    FOREIGN KEY (KategoriID) REFERENCES Kategori(KategoriID) 

); 

İLETİŞİM TABLOSU: 

CREATE TABLE Iletisim ( 

    IletisimID INT PRIMARY KEY , 

    YayinEviID INT NOT NULL, 

    PersonelID INT NOT NULL, 

    MusteriID INT NOT NULL, 

    Telefon VARCHAR(15), 

    EPosta VARCHAR(255), 

    Adres TEXT, 

    FOREIGN KEY (YayinEviID) REFERENCES YayinEvi(YayinEviID), 

    FOREIGN KEY (PersonelID) REFERENCES Personel(PersonelID), 

    FOREIGN KEY (MusteriID) REFERENCES Musteri(MusteriID) 

); 

İNDİRİMLER TABLOSU: 

CREATE TABLE Indirimler ( 

    IndirimID INT PRIMARY KEY , 

    KitapID INT NOT NULL, 

    MusteriID INT NOT NULL, 

    StokID INT NOT NULL, 

    IndirimOrani DECIMAL(5,2) NOT NULL, 

    IndirimTarihi DATE NOT NULL, 

    FOREIGN KEY (KitapID) REFERENCES Kitaplar(KitapID), 

    FOREIGN KEY (MusteriID) REFERENCES Musteri(MusteriID), 

    FOREIGN KEY (StokID) REFERENCES Stok(StokID) 

); 

 

 

 
