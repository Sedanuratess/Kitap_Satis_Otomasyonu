CREATE TABLE [dbo].[Kitaplar](
	[KitapID] [int] NOT NULL,
	[KitapAdi] [nvarchar](50) NULL,
	[YazarID] [int] NOT NULL,
	[KategoriID] [int] NOT NULL,
	[YayıneviID] [int] NOT NULL,
	[BasimYili] [date] NULL,
	[Fiyat] [decimal](18, 0) NULL,
	[StokAdedi] [int] NULL,
)
