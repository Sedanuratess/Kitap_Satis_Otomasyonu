create table SatisDetaylari(
SatisDetayID int primary key identity(1,1),
SatisID int,
KitapID int,
Adet int,
BirimFiyat decimal(10,2),
ToplamFiyat as (Adet * BirimFiyat) persisted
)
