-- 1. Indirimler Tablosu
INSERT INTO Indirimler (IndirimID, KitapID, MusteriID, StokID, IndirimOrani, IndirimTarihi) VALUES
(1, 1, 1, 1, 10, '2024-01-01');
INSERT INTO Indirimler (IndirimID, KitapID, MusteriID, StokID, IndirimOrani, IndirimTarihi) VALUES
(2, 2, 2, 2, 15, '2024-01-02');
INSERT INTO Indirimler (IndirimID, KitapID, MusteriID, StokID, IndirimOrani, IndirimTarihi) VALUES
(3, 3, 3, 3, 20, '2024-01-03');
INSERT INTO Indirimler (IndirimID, KitapID, MusteriID, StokID, IndirimOrani, IndirimTarihi) VALUES
(4, 4, 4, 4, 25, '2024-01-04');
INSERT INTO Indirimler (IndirimID, KitapID, MusteriID, StokID, IndirimOrani, IndirimTarihi) VALUES
(5, 5, 5, 5, 30, '2024-01-05');
INSERT INTO Indirimler (IndirimID, KitapID, MusteriID, StokID, IndirimOrani, IndirimTarihi) VALUES
(6, 6, 6, 6, 35, '2024-01-06');
INSERT INTO Indirimler (IndirimID, KitapID, MusteriID, StokID, IndirimOrani, IndirimTarihi) VALUES
(7, 7, 7, 7, 40, '2024-01-07');
INSERT INTO Indirimler (IndirimID, KitapID, MusteriID, StokID, IndirimOrani, IndirimTarihi) VALUES
(8, 8, 8, 8, 45, '2024-01-08');
INSERT INTO Indirimler (IndirimID, KitapID, MusteriID, StokID, IndirimOrani, IndirimTarihi) VALUES
(9, 9, 9, 9, 50, '2024-01-09');
INSERT INTO Indirimler (IndirimID, KitapID, MusteriID, StokID, IndirimOrani, IndirimTarihi) VALUES
(10, 10, 10, 10, 55, '2024-01-10');

-- 2. Stok Tablosu
INSERT INTO Stok (StokID, Adet) VALUES (1, 100);
INSERT INTO Stok (StokID, Adet) VALUES (2, 200);
INSERT INTO Stok (StokID, Adet) VALUES (3, 150);
INSERT INTO Stok (StokID, Adet) VALUES (4, 300);
INSERT INTO Stok (StokID, Adet) VALUES (5, 50);
INSERT INTO Stok (StokID, Adet) VALUES (6, 400);
INSERT INTO Stok (StokID, Adet) VALUES (7, 250);
INSERT INTO Stok (StokID, Adet) VALUES (8, 350);
INSERT INTO Stok (StokID, Adet) VALUES (9, 180);
INSERT INTO Stok (StokID, Adet) VALUES (10, 220);

INSERT INTO Kitaplar (KitapID, KitapAdi, Fiyat, BasimYili) VALUES (1, 'Simyacı', 50.00, '2020-01-01');
INSERT INTO Kitaplar (KitapID, KitapAdi, Fiyat, BasimYili) VALUES (2, '1984', 60.00, '2019-01-01');
INSERT INTO Kitaplar (KitapID, KitapAdi, Fiyat, BasimYili) VALUES (3, 'Hayvan Çiftliği', 55.00, '2018-01-01');
INSERT INTO Kitaplar (KitapID, KitapAdi, Fiyat, BasimYili) VALUES (4, 'Küçük Prens', 70.00, '2021-01-01');
INSERT INTO Kitaplar (KitapID, KitapAdi, Fiyat, BasimYili) VALUES (5, 'Savaş ve Barış', 80.00, '2022-01-01');
INSERT INTO Kitaplar (KitapID, KitapAdi, Fiyat, BasimYili) VALUES (6, 'Suç ve Ceza', 90.00, '2023-01-01');
INSERT INTO Kitaplar (KitapID, KitapAdi, Fiyat, BasimYili) VALUES (7, 'Bülbülü Öldürmek', 100.00, '2020-01-01');
INSERT INTO Kitaplar (KitapID, KitapAdi, Fiyat, BasimYili) VALUES (8, 'Uçurtma Avcısı', 75.00, '2019-01-01');
INSERT INTO Kitaplar (KitapID, KitapAdi, Fiyat, BasimYili) VALUES (9, 'Şeker Portakalı', 85.00, '2018-01-01');
INSERT INTO Kitaplar (KitapID, KitapAdi, Fiyat, BasimYili) VALUES (10, 'Don Kişot', 95.00, '2021-01-01');

-- 4. StokHareketleri Tablosu
INSERT INTO StokHareketleri (HareketID, StokID, KategoriID, KitapID, Alis, Satis) VALUES (1, 1, 1, 1, 20, 15);
INSERT INTO StokHareketleri (HareketID, StokID, KategoriID, KitapID, Alis, Satis) VALUES (2, 2, 2, 2, 25, 20);
INSERT INTO StokHareketleri (HareketID, StokID, KategoriID, KitapID, Alis, Satis) VALUES (3, 3, 3, 3, 30, 25);
INSERT INTO StokHareketleri (HareketID, StokID, KategoriID, KitapID, Alis, Satis) VALUES (4, 4, 4, 4, 40, 30);
INSERT INTO StokHareketleri (HareketID, StokID, KategoriID, KitapID, Alis, Satis) VALUES (5, 5, 5, 5, 50, 40);
INSERT INTO StokHareketleri (HareketID, StokID, KategoriID, KitapID, Alis, Satis) VALUES (6, 6, 6, 6, 60, 45);
INSERT INTO StokHareketleri (HareketID, StokID, KategoriID, KitapID, Alis, Satis) VALUES (7, 7, 7, 7, 70, 55);
INSERT INTO StokHareketleri (HareketID, StokID, KategoriID, KitapID, Alis, Satis) VALUES (8, 8, 8, 8, 80, 60);
INSERT INTO StokHareketleri (HareketID, StokID, KategoriID, KitapID, Alis, Satis) VALUES (9, 9, 9, 9, 90, 70);
INSERT INTO StokHareketleri (HareketID, StokID, KategoriID, KitapID, Alis, Satis) VALUES (10, 10, 10, 10, 100, 80);


-- Bu şekilde diğer kitaplar için de ekleme yapılabilir.

-- 5. Kategori Tablosu
INSERT INTO Kategori (KategoriID, KategoriAdi) VALUES (1, 'Roman');
INSERT INTO Kategori (KategoriID, KategoriAdi) VALUES (2, 'Bilim');
INSERT INTO Kategori (KategoriID, KategoriAdi) VALUES (3, 'Tarih');
INSERT INTO Kategori (KategoriID, KategoriAdi) VALUES (4, 'Sanat');
INSERT INTO Kategori (KategoriID, KategoriAdi) VALUES (5, 'Teknoloji');
INSERT INTO Kategori (KategoriID, KategoriAdi) VALUES (6, 'Felsefe');
INSERT INTO Kategori (KategoriID, KategoriAdi) VALUES (7, 'Edebiyat');
INSERT INTO Kategori (KategoriID, KategoriAdi) VALUES (8, 'Psikoloji');
INSERT INTO Kategori (KategoriID, KategoriAdi) VALUES (9, 'Çocuk');
INSERT INTO Kategori (KategoriID, KategoriAdi) VALUES (10, 'Eğitim');

-- 6. Eserler Tablosu
INSERT INTO Eserleri(EserID, YazarID, KitapID, KategoriID) VALUES (1, 1, 1, 1);
INSERT INTO Eserleri(EserID, YazarID, KitapID, KategoriID) VALUES (2, 2, 2, 2);
INSERT INTO Eserleri (EserID, YazarID, KitapID, KategoriID) VALUES (3, 3, 3, 3);
INSERT INTO Eserleri (EserID, YazarID, KitapID, KategoriID) VALUES (4, 4, 4, 4);
INSERT INTO Eserleri (EserID, YazarID, KitapID, KategoriID) VALUES (5, 5, 5, 5);
INSERT INTO Eserleri (EserID, YazarID, KitapID, KategoriID) VALUES (6, 6, 6, 6);
INSERT INTO Eserleri (EserID, YazarID, KitapID, KategoriID) VALUES (7, 7, 7, 7);
INSERT INTO Eserleri (EserID, YazarID, KitapID, KategoriID) VALUES (8, 8, 8, 8);
INSERT INTO Eserleri (EserID, YazarID, KitapID, KategoriID) VALUES (9, 9, 9, 9);
INSERT INTO Eserleri (EserID, YazarID, KitapID, KategoriID) VALUES (10, 10, 10, 10);

-- 7. Yazarlar Tablosu
INSERT INTO Yazarlar (YazarID, YazarAdi) VALUES (1, 'Paulo Coelho');
INSERT INTO Yazarlar (YazarID, YazarAdi) VALUES (2, 'George Orwell');
INSERT INTO Yazarlar (YazarID, YazarAdi) VALUES (3, 'Lev Tolstoy');
INSERT INTO Yazarlar (YazarID, YazarAdi) VALUES (4, 'Fyodor Dostoyevski');
INSERT INTO Yazarlar (YazarID, YazarAdi) VALUES (5, 'Harper Lee');
INSERT INTO Yazarlar (YazarID, YazarAdi) VALUES (6, 'Khaled Hosseini');
INSERT INTO Yazarlar (YazarID, YazarAdi) VALUES (7, 'Antoine de Saint-Exupéry');
INSERT INTO Yazarlar (YazarID, YazarAdi) VALUES (8, 'José Mauro de Vasconcelos');
INSERT INTO Yazarlar (YazarID, YazarAdi) VALUES (9, 'Miguel de Cervantes');
INSERT INTO Yazarlar (YazarID, YazarAdi) VALUES (10, 'Albert Camus');

-- 8. Musteri Tablosu
INSERT INTO Musteri (MusteriID, AdiSoyadi, Telefon, EPosta) VALUES (1, 'Ali Veli', '1234567890', 'ali@gmail.com');
INSERT INTO Musteri (MusteriID, AdiSoyadi, Telefon, EPosta) VALUES (2, 'Ayşe Fatma', '2345678901', 'ayse@gmail.com');
INSERT INTO Musteri (MusteriID, AdiSoyadi, Telefon, EPosta) VALUES (3, 'Ahmet Mehmet', '3456789012', 'ahmet@gmail.com');
INSERT INTO Musteri (MusteriID, AdiSoyadi, Telefon, EPosta) VALUES (4, 'Elif Zeynep', '4567890123', 'elif@gmail.com');
INSERT INTO Musteri (MusteriID, AdiSoyadi, Telefon, EPosta) VALUES (5, 'Hakan Bora', '5678901234', 'hakan@gmail.com');
INSERT INTO Musteri (MusteriID, AdiSoyadi, Telefon, EPosta) VALUES (6, 'Ece Deniz', '6789012345', 'ece@gmail.com');
INSERT INTO Musteri (MusteriID, AdiSoyadi, Telefon, EPosta) VALUES (7, 'Burak Ömer', '7890123456', 'burak@gmail.com');
INSERT INTO Musteri (MusteriID, AdiSoyadi, Telefon, EPosta) VALUES (8, 'Merve Aylin', '8901234567', 'merve@gmail.com');
INSERT INTO Musteri (MusteriID, AdiSoyadi, Telefon, EPosta) VALUES (9, 'Emre Can', '9012345678', 'emre@gmail.com');
INSERT INTO Musteri (MusteriID, AdiSoyadi, Telefon, EPosta) VALUES (10, 'Gizem Aslı', '0123456789', 'gizem@gmail.com');

-- 9. YayınEvi Tablosu
INSERT INTO YayinEvi (YayinEviID, YayinEviAdi, Telefon, Adres, EPosta) VALUES (1, 'Can Yayınları', '123456789', 'Adres 1', 'canyayinlari@gmail.com');
INSERT INTO YayinEvi (YayinEviID, YayinEviAdi, Telefon, Adres, EPosta) VALUES (2, 'İletişim Yayınları', '223456789', 'Adres 2', 'iletisimyayinlari@gmail.com');
INSERT INTO YayinEvi (YayinEviID, YayinEviAdi, Telefon, Adres, EPosta) VALUES (3, 'Doğan Kitap', '323456789', 'Adres 3', 'dogankitap@gmail.com');
INSERT INTO YayinEvi (YayinEviID, YayinEviAdi, Telefon, Adres, EPosta) VALUES (4, 'Everest Yayınları', '423456789', 'Adres 4', 'everestyayinlari@gmail.com');
INSERT INTO YayinEvi (YayinEviID, YayinEviAdi, Telefon, Adres, EPosta) VALUES (5, 'YKY', '523456789', 'Adres 5', 'yky@gmail.com');
INSERT INTO YayinEvi (YayinEviID, YayinEviAdi, Telefon, Adres, EPosta) VALUES (6, 'Altın Kitaplar', '623456789', 'Adres 6', 'altinkitaplar@gmail.com');
INSERT INTO YayinEvi (YayinEviID, YayinEviAdi, Telefon, Adres, EPosta) VALUES (7, 'Kırmızı Kedi', '723456789', 'Adres 7', 'kirmizikedi@gmail.com');
INSERT INTO YayinEvi (YayinEviID, YayinEviAdi, Telefon, Adres, EPosta) VALUES (8, 'Epsilon Yayınları', '823456789', 'Adres 8', 'epsilon@gmail.com');
INSERT INTO YayinEvi (YayinEviID, YayinEviAdi, Telefon, Adres, EPosta) VALUES (9, 'Pegasus Yayınları', '923456789', 'Adres 9', 'pegasus@gmail.com');
INSERT INTO YayinEvi (YayinEviID, YayinEviAdi, Telefon, Adres, EPosta) VALUES (10, 'April Yayıncılık', '1023456789', 'Adres 10', 'april@gmail.com');
-- 10.İletişim Tablosu
INSERT INTO Iletisim (IletisimID, YayinEviID, PersonelID, MusteriID) VALUES (1, 1, 1, 1);
INSERT INTO Iletisim (IletisimID, YayinEviID, PersonelID, MusteriID) VALUES (2, 2, 2, 2);
INSERT INTO Iletisim (IletisimID, YayinEviID, PersonelID, MusteriID) VALUES (3, 3, 3, 3);
INSERT INTO Iletisim (IletisimID, YayinEviID, PersonelID, MusteriID) VALUES (4, 4, 4, 4);
INSERT INTO Iletisim (IletisimID, YayinEviID, PersonelID, MusteriID) VALUES (5, 5, 5, 5);
INSERT INTO Iletisim (IletisimID, YayinEviID, PersonelID, MusteriID) VALUES (6, 6, 6, 6);
INSERT INTO Iletisim (IletisimID, YayinEviID, PersonelID, MusteriID) VALUES (7, 7, 7, 7);
INSERT INTO Iletisim (IletisimID, YayinEviID, PersonelID, MusteriID) VALUES (8, 8, 8, 8);
INSERT INTO Iletisim (IletisimID, YayinEviID, PersonelID, MusteriID) VALUES (9, 9, 9, 9);
INSERT INTO Iletisim (IletisimID, YayinEviID, PersonelID, MusteriID) VALUES (10, 10, 10, 10);

-- 11.Personel Tablosu
INSERT INTO Personel (PersonelID, PersonelAdi) VALUES (1, 'Mehmet Yılmaz');
INSERT INTO Personel (PersonelID, PersonelAdi) VALUES (2, 'Ayşe Kaya');
INSERT INTO Personel (PersonelID, PersonelAdi) VALUES (3, 'Ali Çelik');
INSERT INTO Personel (PersonelID, PersonelAdi) VALUES (4, 'Fatma Demir');
INSERT INTO Personel (PersonelID, PersonelAdi) VALUES (5, 'Ahmet Koç');
INSERT INTO Personel (PersonelID, PersonelAdi) VALUES (6, 'Zeynep Arslan');
INSERT INTO Personel (PersonelID, PersonelAdi) VALUES (7, 'Hakan Şahin');
INSERT INTO Personel (PersonelID, PersonelAdi) VALUES (8, 'Merve Aksoy');
INSERT INTO Personel (PersonelID, PersonelAdi) VALUES (9, 'Burak Deniz');
INSERT INTO Personel (PersonelID, PersonelAdi) VALUES (10, 'Elif Güneş');
