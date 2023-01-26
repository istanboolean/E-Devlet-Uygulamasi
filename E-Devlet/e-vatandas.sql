USE [e_vatandas]
GO
/****** Object:  Table [dbo].[adli_sicil]    Script Date: 30.12.2022 13:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adli_sicil](
	[vid] [int] NOT NULL,
	[sicil_no] [int] NULL,
	[dosya_no] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[asi_bilgisi]    Script Date: 30.12.2022 13:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asi_bilgisi](
	[asi_id] [int] NOT NULL,
	[doz] [smallint] NULL,
	[asi_isim] [nvarchar](20) NULL,
	[yapilan_tarih] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[asi_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[askerlik_bilgileri]    Script Date: 30.12.2022 13:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[askerlik_bilgileri](
	[vid] [int] NOT NULL,
	[kuvvet] [nvarchar](50) NULL,
	[sinif] [nvarchar](50) NULL,
	[baslangic_tarihi] [date] NULL,
	[bitis_tarihi] [date] NULL,
	[birlik] [nvarchar](50) NULL,
	[askerlik_durumu] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[egitim_bilgileri]    Script Date: 30.12.2022 13:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[egitim_bilgileri](
	[vid] [int] NOT NULL,
	[okul_adi] [nvarchar](50) NULL,
	[egitim_durumu] [nvarchar](20) NULL,
	[mezuniyet_tarihi] [date] NULL,
	[burs] [nvarchar](20) NULL,
	[diploma_notu] [smallint] NULL,
	[mezuniyet_durumu] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ehliyet]    Script Date: 30.12.2022 13:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ehliyet](
	[vid] [int] NOT NULL,
	[sinifi] [varchar](5) NULL,
	[ceza_puani] [int] NULL,
	[ehliyet_no] [varchar](20) NULL,
	[verilme_tarihi] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[emekli]    Script Date: 30.12.2022 13:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emekli](
	[vid] [int] NOT NULL,
	[emekli_turu] [nvarchar](20) NULL,
	[prim_gunu] [int] NULL,
	[giris_tarihi] [date] NULL,
	[cikis_tarihi] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[evcil_hayvan]    Script Date: 30.12.2022 13:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[evcil_hayvan](
	[vid] [int] NOT NULL,
	[cip_no] [varchar](10) NULL,
	[isim] [nvarchar](20) NULL,
	[tur] [nvarchar](20) NULL,
	[kuduz_asi_durumu] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pasaport]    Script Date: 30.12.2022 13:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pasaport](
	[vid] [int] NOT NULL,
	[pasaport_no] [varchar](10) NULL,
	[verilis_tarihi] [date] NULL,
	[bitis_tarihi] [date] NULL,
	[turu] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[saglik_bilgileri]    Script Date: 30.12.2022 13:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[saglik_bilgileri](
	[vid] [int] NOT NULL,
	[kan_grubu] [nvarchar](5) NULL,
	[yas] [smallint] NULL,
	[boy] [smallint] NULL,
	[kilo] [smallint] NULL,
	[vki] [varchar](5) NULL,
	[saglik_ocagi] [nvarchar](100) NULL,
	[asi_id] [int] NULL,
	[aile_hekimi] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[secim]    Script Date: 30.12.2022 13:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[secim](
	[vid] [int] NOT NULL,
	[sandik_no] [int] NULL,
	[okul_adi] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vatandaslar]    Script Date: 30.12.2022 13:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vatandaslar](
	[vid] [int] NOT NULL,
	[tc] [nvarchar](20) NULL,
	[sifre] [char](32) NULL,
	[isim] [nvarchar](30) NULL,
	[soyisim] [nvarchar](30) NULL,
	[cinsiyet] [varchar](5) NULL,
	[dogum_tarihi] [date] NULL,
	[posta_kodu] [varchar](5) NULL,
	[adres] [nvarchar](200) NULL,
	[il] [nvarchar](20) NULL,
	[mahalle] [nvarchar](30) NULL,
	[ilce] [nvarchar](20) NULL,
	[dogum_yeri] [nvarchar](20) NULL,
	[guvenlik_sorusu] [nvarchar](100) NULL,
	[guvenlik_sorusu_cevap] [nvarchar](50) NULL,
 CONSTRAINT [PK__vatandas__DDB00C7D017C3318] PRIMARY KEY CLUSTERED 
(
	[vid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vergi]    Script Date: 30.12.2022 13:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vergi](
	[vid] [int] NOT NULL,
	[borc] [int] NULL,
	[vergi_tipi] [nvarchar](20) NULL,
	[vergi_no] [varchar](10) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[adli_sicil] ([vid], [sicil_no], [dosya_no]) VALUES (1, 352440, 78965)
GO
INSERT [dbo].[adli_sicil] ([vid], [sicil_no], [dosya_no]) VALUES (2, NULL, NULL)
GO
INSERT [dbo].[adli_sicil] ([vid], [sicil_no], [dosya_no]) VALUES (3, NULL, NULL)
GO
INSERT [dbo].[adli_sicil] ([vid], [sicil_no], [dosya_no]) VALUES (4, 602140, 78421)
GO
INSERT [dbo].[adli_sicil] ([vid], [sicil_no], [dosya_no]) VALUES (5, NULL, NULL)
GO
INSERT [dbo].[adli_sicil] ([vid], [sicil_no], [dosya_no]) VALUES (6, NULL, NULL)
GO
INSERT [dbo].[adli_sicil] ([vid], [sicil_no], [dosya_no]) VALUES (7, NULL, NULL)
GO
INSERT [dbo].[adli_sicil] ([vid], [sicil_no], [dosya_no]) VALUES (8, NULL, NULL)
GO
INSERT [dbo].[adli_sicil] ([vid], [sicil_no], [dosya_no]) VALUES (9, NULL, NULL)
GO
INSERT [dbo].[adli_sicil] ([vid], [sicil_no], [dosya_no]) VALUES (10, 875210, 78998)
GO
INSERT [dbo].[adli_sicil] ([vid], [sicil_no], [dosya_no]) VALUES (11, NULL, NULL)
GO
INSERT [dbo].[adli_sicil] ([vid], [sicil_no], [dosya_no]) VALUES (12, NULL, NULL)
GO
INSERT [dbo].[adli_sicil] ([vid], [sicil_no], [dosya_no]) VALUES (13, 354780, 78112)
GO
INSERT [dbo].[adli_sicil] ([vid], [sicil_no], [dosya_no]) VALUES (14, NULL, NULL)
GO
INSERT [dbo].[adli_sicil] ([vid], [sicil_no], [dosya_no]) VALUES (15, 785420, 78547)
GO
INSERT [dbo].[asi_bilgisi] ([asi_id], [doz], [asi_isim], [yapilan_tarih]) VALUES (106, 1, N'KABAKULAK', CAST(N'2001-02-28' AS Date))
GO
INSERT [dbo].[asi_bilgisi] ([asi_id], [doz], [asi_isim], [yapilan_tarih]) VALUES (145, 2, N'TETANOZ', CAST(N'1980-04-26' AS Date))
GO
INSERT [dbo].[asi_bilgisi] ([asi_id], [doz], [asi_isim], [yapilan_tarih]) VALUES (149, 1, N'DIFTERI', CAST(N'2000-11-02' AS Date))
GO
INSERT [dbo].[asi_bilgisi] ([asi_id], [doz], [asi_isim], [yapilan_tarih]) VALUES (192, 2, N'HEPATIT-A', CAST(N'2003-09-17' AS Date))
GO
INSERT [dbo].[asi_bilgisi] ([asi_id], [doz], [asi_isim], [yapilan_tarih]) VALUES (302, 3, N'SU ÇIÇEGI', CAST(N'1995-05-25' AS Date))
GO
INSERT [dbo].[asi_bilgisi] ([asi_id], [doz], [asi_isim], [yapilan_tarih]) VALUES (324, 1, N'KIZAMIK', CAST(N'2010-03-19' AS Date))
GO
INSERT [dbo].[asi_bilgisi] ([asi_id], [doz], [asi_isim], [yapilan_tarih]) VALUES (333, 2, N'TÜBERKÜLOZ', CAST(N'2000-01-30' AS Date))
GO
INSERT [dbo].[asi_bilgisi] ([asi_id], [doz], [asi_isim], [yapilan_tarih]) VALUES (344, 2, N'TETANOZ', CAST(N'2000-03-10' AS Date))
GO
INSERT [dbo].[asi_bilgisi] ([asi_id], [doz], [asi_isim], [yapilan_tarih]) VALUES (423, 1, N'HEPATIT-B', CAST(N'1998-06-20' AS Date))
GO
INSERT [dbo].[asi_bilgisi] ([asi_id], [doz], [asi_isim], [yapilan_tarih]) VALUES (622, 1, N'ZATÜRRE', CAST(N'1990-05-21' AS Date))
GO
INSERT [dbo].[asi_bilgisi] ([asi_id], [doz], [asi_isim], [yapilan_tarih]) VALUES (640, 1, N'BOGMACA', CAST(N'2010-03-11' AS Date))
GO
INSERT [dbo].[asi_bilgisi] ([asi_id], [doz], [asi_isim], [yapilan_tarih]) VALUES (742, 1, N'KIZAMIK', CAST(N'2009-08-19' AS Date))
GO
INSERT [dbo].[asi_bilgisi] ([asi_id], [doz], [asi_isim], [yapilan_tarih]) VALUES (754, 1, N'DIFTERI', CAST(N'2006-08-10' AS Date))
GO
INSERT [dbo].[asi_bilgisi] ([asi_id], [doz], [asi_isim], [yapilan_tarih]) VALUES (850, 1, N'ÇOCUK FELCI', CAST(N'2003-08-31' AS Date))
GO
INSERT [dbo].[asi_bilgisi] ([asi_id], [doz], [asi_isim], [yapilan_tarih]) VALUES (985, 2, N'BOGMACA', CAST(N'2002-01-09' AS Date))
GO
INSERT [dbo].[askerlik_bilgileri] ([vid], [kuvvet], [sinif], [baslangic_tarihi], [bitis_tarihi], [birlik], [askerlik_durumu]) VALUES (1, N'KARA KUVVETLERI', N'KARA', CAST(N'2010-01-01' AS Date), CAST(N'2011-01-01' AS Date), N'ACEMI BIRLIK', N'YAPILDI')
GO
INSERT [dbo].[askerlik_bilgileri] ([vid], [kuvvet], [sinif], [baslangic_tarihi], [bitis_tarihi], [birlik], [askerlik_durumu]) VALUES (2, N'DENIZ KUVVETLERI', N'DENIZ', CAST(N'1992-01-01' AS Date), CAST(N'1993-01-01' AS Date), N'USTA BIRLIK', N'YAPILDI')
GO
INSERT [dbo].[askerlik_bilgileri] ([vid], [kuvvet], [sinif], [baslangic_tarihi], [bitis_tarihi], [birlik], [askerlik_durumu]) VALUES (3, N'HAVA KUVVETLERI', N'HAVA', CAST(N'2010-01-01' AS Date), CAST(N'2011-01-01' AS Date), N'USTA BIRLIK', N'YAPILDI')
GO
INSERT [dbo].[askerlik_bilgileri] ([vid], [kuvvet], [sinif], [baslangic_tarihi], [bitis_tarihi], [birlik], [askerlik_durumu]) VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[askerlik_bilgileri] ([vid], [kuvvet], [sinif], [baslangic_tarihi], [bitis_tarihi], [birlik], [askerlik_durumu]) VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[askerlik_bilgileri] ([vid], [kuvvet], [sinif], [baslangic_tarihi], [bitis_tarihi], [birlik], [askerlik_durumu]) VALUES (6, N'KARA KUVVETLERI', N'KARA', CAST(N'2024-01-01' AS Date), CAST(N'2025-01-01' AS Date), N'ACEMI BIRLIK', N'TECIL')
GO
INSERT [dbo].[askerlik_bilgileri] ([vid], [kuvvet], [sinif], [baslangic_tarihi], [bitis_tarihi], [birlik], [askerlik_durumu]) VALUES (7, N'KARA KUVVETLERI', N'KARA', CAST(N'2021-01-01' AS Date), CAST(N'2021-01-25' AS Date), N'ACEMI BIRLIK', N'BEDELLI')
GO
INSERT [dbo].[askerlik_bilgileri] ([vid], [kuvvet], [sinif], [baslangic_tarihi], [bitis_tarihi], [birlik], [askerlik_durumu]) VALUES (8, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[askerlik_bilgileri] ([vid], [kuvvet], [sinif], [baslangic_tarihi], [bitis_tarihi], [birlik], [askerlik_durumu]) VALUES (9, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[askerlik_bilgileri] ([vid], [kuvvet], [sinif], [baslangic_tarihi], [bitis_tarihi], [birlik], [askerlik_durumu]) VALUES (10, N'DENIZ KUVVETLERI', N'DENIZ', CAST(N'1990-01-01' AS Date), CAST(N'1991-01-25' AS Date), N'USTA BIRLIK', N'YAPILDI')
GO
INSERT [dbo].[askerlik_bilgileri] ([vid], [kuvvet], [sinif], [baslangic_tarihi], [bitis_tarihi], [birlik], [askerlik_durumu]) VALUES (11, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[askerlik_bilgileri] ([vid], [kuvvet], [sinif], [baslangic_tarihi], [bitis_tarihi], [birlik], [askerlik_durumu]) VALUES (12, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[askerlik_bilgileri] ([vid], [kuvvet], [sinif], [baslangic_tarihi], [bitis_tarihi], [birlik], [askerlik_durumu]) VALUES (13, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[askerlik_bilgileri] ([vid], [kuvvet], [sinif], [baslangic_tarihi], [bitis_tarihi], [birlik], [askerlik_durumu]) VALUES (14, NULL, NULL, NULL, NULL, NULL, N'MUAF')
GO
INSERT [dbo].[askerlik_bilgileri] ([vid], [kuvvet], [sinif], [baslangic_tarihi], [bitis_tarihi], [birlik], [askerlik_durumu]) VALUES (15, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[egitim_bilgileri] ([vid], [okul_adi], [egitim_durumu], [mezuniyet_tarihi], [burs], [diploma_notu], [mezuniyet_durumu]) VALUES (1, N'MUSTAFA KEMAL ILKOKULU', N'LISE', CAST(N'2001-02-14' AS Date), N'VAR', 95, N'MEZUN')
GO
INSERT [dbo].[egitim_bilgileri] ([vid], [okul_adi], [egitim_durumu], [mezuniyet_tarihi], [burs], [diploma_notu], [mezuniyet_durumu]) VALUES (2, N'KAZIM KARABEKIR ILKOKULU', N'LISANS', CAST(N'2007-02-14' AS Date), N'VAR', 80, N'ÖGRENCI')
GO
INSERT [dbo].[egitim_bilgileri] ([vid], [okul_adi], [egitim_durumu], [mezuniyet_tarihi], [burs], [diploma_notu], [mezuniyet_durumu]) VALUES (3, N'HACER ÖZER ILKOKULU', N'ÖNLISANS', CAST(N'2010-02-14' AS Date), N'YOK', 70, N'MEZUN')
GO
INSERT [dbo].[egitim_bilgileri] ([vid], [okul_adi], [egitim_durumu], [mezuniyet_tarihi], [burs], [diploma_notu], [mezuniyet_durumu]) VALUES (4, N'KEMAL KAYA ILKOKULU', N'YÜKSEKLISANS', CAST(N'2002-02-14' AS Date), N'VAR', 67, N'MEZUN')
GO
INSERT [dbo].[egitim_bilgileri] ([vid], [okul_adi], [egitim_durumu], [mezuniyet_tarihi], [burs], [diploma_notu], [mezuniyet_durumu]) VALUES (5, N'HAZIM ERSU ILKOKULU', N'LISE', CAST(N'2000-02-14' AS Date), N'YOK', 87, N'MEZUN')
GO
INSERT [dbo].[egitim_bilgileri] ([vid], [okul_adi], [egitim_durumu], [mezuniyet_tarihi], [burs], [diploma_notu], [mezuniyet_durumu]) VALUES (6, N'MUHITTIN ÜSTÜNDAG ILKOKULU', N'LISE', CAST(N'1992-02-14' AS Date), N'VAR', 56, N'ÖGRENCI')
GO
INSERT [dbo].[egitim_bilgileri] ([vid], [okul_adi], [egitim_durumu], [mezuniyet_tarihi], [burs], [diploma_notu], [mezuniyet_durumu]) VALUES (7, N'ATATÜRK ILKOKULU', N'ILKOKUL', CAST(N'1960-02-14' AS Date), N'YOK', 69, N'MEZUN')
GO
INSERT [dbo].[egitim_bilgileri] ([vid], [okul_adi], [egitim_durumu], [mezuniyet_tarihi], [burs], [diploma_notu], [mezuniyet_durumu]) VALUES (8, N'CUMHURIYET ILKOKULU', N'LISE', CAST(N'1970-02-14' AS Date), N'VAR', 74, N'ÖGRENCI')
GO
INSERT [dbo].[egitim_bilgileri] ([vid], [okul_adi], [egitim_durumu], [mezuniyet_tarihi], [burs], [diploma_notu], [mezuniyet_durumu]) VALUES (9, N'ISTIKLAL ILKOKULU', N'LISANS', CAST(N'2000-02-14' AS Date), N'YOK', 62, N'MEZUN')
GO
INSERT [dbo].[egitim_bilgileri] ([vid], [okul_adi], [egitim_durumu], [mezuniyet_tarihi], [burs], [diploma_notu], [mezuniyet_durumu]) VALUES (10, N'ENVER KEMAL ILKOKULU', N'LISANS', CAST(N'1980-02-14' AS Date), N'VAR', 97, N'MEZUN')
GO
INSERT [dbo].[egitim_bilgileri] ([vid], [okul_adi], [egitim_durumu], [mezuniyet_tarihi], [burs], [diploma_notu], [mezuniyet_durumu]) VALUES (11, N'ISMET INÖNÜ ILKOKULU', N'LISANS', CAST(N'1990-02-14' AS Date), N'YOK', 82, N'ÖGRENCI')
GO
INSERT [dbo].[egitim_bilgileri] ([vid], [okul_adi], [egitim_durumu], [mezuniyet_tarihi], [burs], [diploma_notu], [mezuniyet_durumu]) VALUES (12, N'NALBANTOGLU ILKOKULU', N'LISE', CAST(N'2006-02-14' AS Date), N'VAR', 94, N'MEZUN')
GO
INSERT [dbo].[egitim_bilgileri] ([vid], [okul_adi], [egitim_durumu], [mezuniyet_tarihi], [burs], [diploma_notu], [mezuniyet_durumu]) VALUES (13, N'ISTANBULLUOGLU ILKOKULU', N'ILKOKUL', CAST(N'2007-02-14' AS Date), N'YOK', 68, N'ÖGRENCI')
GO
INSERT [dbo].[egitim_bilgileri] ([vid], [okul_adi], [egitim_durumu], [mezuniyet_tarihi], [burs], [diploma_notu], [mezuniyet_durumu]) VALUES (14, N'ERDOGAN ILKOKULU', N'DOKTORA', CAST(N'2015-02-14' AS Date), N'VAR', 90, N'MEZUN')
GO
INSERT [dbo].[egitim_bilgileri] ([vid], [okul_adi], [egitim_durumu], [mezuniyet_tarihi], [burs], [diploma_notu], [mezuniyet_durumu]) VALUES (15, N'EMINE ILKOKULU', N'ILKOKUL', CAST(N'1999-02-14' AS Date), N'YOK', 54, N'MEZUN')
GO
INSERT [dbo].[ehliyet] ([vid], [sinifi], [ceza_puani], [ehliyet_no], [verilme_tarihi]) VALUES (1, N'B', 110, N'A3001', CAST(N'2010-01-01' AS Date))
GO
INSERT [dbo].[ehliyet] ([vid], [sinifi], [ceza_puani], [ehliyet_no], [verilme_tarihi]) VALUES (2, N'A2', NULL, N'A3002', CAST(N'2000-01-01' AS Date))
GO
INSERT [dbo].[ehliyet] ([vid], [sinifi], [ceza_puani], [ehliyet_no], [verilme_tarihi]) VALUES (3, N'D', 50, N'A3003', CAST(N'2007-01-01' AS Date))
GO
INSERT [dbo].[ehliyet] ([vid], [sinifi], [ceza_puani], [ehliyet_no], [verilme_tarihi]) VALUES (4, N'B', NULL, N'A3004', CAST(N'1980-01-01' AS Date))
GO
INSERT [dbo].[ehliyet] ([vid], [sinifi], [ceza_puani], [ehliyet_no], [verilme_tarihi]) VALUES (5, N'E', 150, N'A3005', CAST(N'2011-01-01' AS Date))
GO
INSERT [dbo].[ehliyet] ([vid], [sinifi], [ceza_puani], [ehliyet_no], [verilme_tarihi]) VALUES (6, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ehliyet] ([vid], [sinifi], [ceza_puani], [ehliyet_no], [verilme_tarihi]) VALUES (7, N'B', 25, N'A3006', CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[ehliyet] ([vid], [sinifi], [ceza_puani], [ehliyet_no], [verilme_tarihi]) VALUES (8, N'H', 100, N'A3007', CAST(N'2008-01-01' AS Date))
GO
INSERT [dbo].[ehliyet] ([vid], [sinifi], [ceza_puani], [ehliyet_no], [verilme_tarihi]) VALUES (9, N'B', NULL, N'A3008', CAST(N'2007-01-01' AS Date))
GO
INSERT [dbo].[ehliyet] ([vid], [sinifi], [ceza_puani], [ehliyet_no], [verilme_tarihi]) VALUES (10, N'A', 70, N'A3009', CAST(N'2000-01-01' AS Date))
GO
INSERT [dbo].[ehliyet] ([vid], [sinifi], [ceza_puani], [ehliyet_no], [verilme_tarihi]) VALUES (11, N'B', 50, N'A3010', CAST(N'2000-01-01' AS Date))
GO
INSERT [dbo].[ehliyet] ([vid], [sinifi], [ceza_puani], [ehliyet_no], [verilme_tarihi]) VALUES (12, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ehliyet] ([vid], [sinifi], [ceza_puani], [ehliyet_no], [verilme_tarihi]) VALUES (13, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ehliyet] ([vid], [sinifi], [ceza_puani], [ehliyet_no], [verilme_tarihi]) VALUES (14, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ehliyet] ([vid], [sinifi], [ceza_puani], [ehliyet_no], [verilme_tarihi]) VALUES (15, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[emekli] ([vid], [emekli_turu], [prim_gunu], [giris_tarihi], [cikis_tarihi]) VALUES (1, N'SGK', 7000, CAST(N'1985-01-01' AS Date), CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[emekli] ([vid], [emekli_turu], [prim_gunu], [giris_tarihi], [cikis_tarihi]) VALUES (2, N'SGK', 70, CAST(N'1991-01-01' AS Date), NULL)
GO
INSERT [dbo].[emekli] ([vid], [emekli_turu], [prim_gunu], [giris_tarihi], [cikis_tarihi]) VALUES (3, N'BAG-KUR', 350, CAST(N'1985-01-01' AS Date), NULL)
GO
INSERT [dbo].[emekli] ([vid], [emekli_turu], [prim_gunu], [giris_tarihi], [cikis_tarihi]) VALUES (4, N'BAG-KUR', 1500, CAST(N'1988-01-01' AS Date), CAST(N'1995-01-01' AS Date))
GO
INSERT [dbo].[emekli] ([vid], [emekli_turu], [prim_gunu], [giris_tarihi], [cikis_tarihi]) VALUES (5, N'SGK', 412, CAST(N'1985-01-01' AS Date), NULL)
GO
INSERT [dbo].[emekli] ([vid], [emekli_turu], [prim_gunu], [giris_tarihi], [cikis_tarihi]) VALUES (6, N'BAG-KUR', 2641, CAST(N'1985-01-01' AS Date), NULL)
GO
INSERT [dbo].[emekli] ([vid], [emekli_turu], [prim_gunu], [giris_tarihi], [cikis_tarihi]) VALUES (7, N'SGK', 347, CAST(N'1995-01-01' AS Date), NULL)
GO
INSERT [dbo].[emekli] ([vid], [emekli_turu], [prim_gunu], [giris_tarihi], [cikis_tarihi]) VALUES (8, N'SGK', 267, CAST(N'2005-01-01' AS Date), NULL)
GO
INSERT [dbo].[emekli] ([vid], [emekli_turu], [prim_gunu], [giris_tarihi], [cikis_tarihi]) VALUES (9, N'BAG-KUR', 4210, CAST(N'1960-01-01' AS Date), CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[emekli] ([vid], [emekli_turu], [prim_gunu], [giris_tarihi], [cikis_tarihi]) VALUES (10, N'SGK', 1478, CAST(N'1985-01-01' AS Date), NULL)
GO
INSERT [dbo].[emekli] ([vid], [emekli_turu], [prim_gunu], [giris_tarihi], [cikis_tarihi]) VALUES (11, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[emekli] ([vid], [emekli_turu], [prim_gunu], [giris_tarihi], [cikis_tarihi]) VALUES (12, N'BAG-KUR', 640, CAST(N'1999-01-01' AS Date), NULL)
GO
INSERT [dbo].[emekli] ([vid], [emekli_turu], [prim_gunu], [giris_tarihi], [cikis_tarihi]) VALUES (13, N'SGK', 1000, CAST(N'1985-01-01' AS Date), NULL)
GO
INSERT [dbo].[emekli] ([vid], [emekli_turu], [prim_gunu], [giris_tarihi], [cikis_tarihi]) VALUES (14, N'SGK', 3, CAST(N'2021-01-01' AS Date), NULL)
GO
INSERT [dbo].[emekli] ([vid], [emekli_turu], [prim_gunu], [giris_tarihi], [cikis_tarihi]) VALUES (15, N'BAG-KUR', 5000, CAST(N'1995-01-01' AS Date), CAST(N'2009-01-01' AS Date))
GO
INSERT [dbo].[evcil_hayvan] ([vid], [cip_no], [isim], [tur], [kuduz_asi_durumu]) VALUES (1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[evcil_hayvan] ([vid], [cip_no], [isim], [tur], [kuduz_asi_durumu]) VALUES (2, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[evcil_hayvan] ([vid], [cip_no], [isim], [tur], [kuduz_asi_durumu]) VALUES (3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[evcil_hayvan] ([vid], [cip_no], [isim], [tur], [kuduz_asi_durumu]) VALUES (4, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[evcil_hayvan] ([vid], [cip_no], [isim], [tur], [kuduz_asi_durumu]) VALUES (5, N'1001', N'MOLLY', N'KEDI', N'YAPILDI')
GO
INSERT [dbo].[evcil_hayvan] ([vid], [cip_no], [isim], [tur], [kuduz_asi_durumu]) VALUES (6, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[evcil_hayvan] ([vid], [cip_no], [isim], [tur], [kuduz_asi_durumu]) VALUES (7, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[evcil_hayvan] ([vid], [cip_no], [isim], [tur], [kuduz_asi_durumu]) VALUES (8, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[evcil_hayvan] ([vid], [cip_no], [isim], [tur], [kuduz_asi_durumu]) VALUES (9, N'1002', N'CHELSEA', N'KÖPEK', N'YAPILDI')
GO
INSERT [dbo].[evcil_hayvan] ([vid], [cip_no], [isim], [tur], [kuduz_asi_durumu]) VALUES (10, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[evcil_hayvan] ([vid], [cip_no], [isim], [tur], [kuduz_asi_durumu]) VALUES (11, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[evcil_hayvan] ([vid], [cip_no], [isim], [tur], [kuduz_asi_durumu]) VALUES (12, N'1003', N'KARABAS', N'KÖPEK', N'YAPILMADI')
GO
INSERT [dbo].[evcil_hayvan] ([vid], [cip_no], [isim], [tur], [kuduz_asi_durumu]) VALUES (13, N'1004', N'MANKI', N'MAYMUN', N'YAPILDI')
GO
INSERT [dbo].[evcil_hayvan] ([vid], [cip_no], [isim], [tur], [kuduz_asi_durumu]) VALUES (14, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[evcil_hayvan] ([vid], [cip_no], [isim], [tur], [kuduz_asi_durumu]) VALUES (15, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[pasaport] ([vid], [pasaport_no], [verilis_tarihi], [bitis_tarihi], [turu]) VALUES (1, N'101', CAST(N'2005-01-01' AS Date), CAST(N'2010-01-01' AS Date), N'GRI')
GO
INSERT [dbo].[pasaport] ([vid], [pasaport_no], [verilis_tarihi], [bitis_tarihi], [turu]) VALUES (2, N'102', CAST(N'2001-01-01' AS Date), CAST(N'2003-01-01' AS Date), N'BORDO')
GO
INSERT [dbo].[pasaport] ([vid], [pasaport_no], [verilis_tarihi], [bitis_tarihi], [turu]) VALUES (3, N'103', CAST(N'1990-01-01' AS Date), CAST(N'1995-01-01' AS Date), N'BORDO')
GO
INSERT [dbo].[pasaport] ([vid], [pasaport_no], [verilis_tarihi], [bitis_tarihi], [turu]) VALUES (4, N'104', CAST(N'1974-01-01' AS Date), CAST(N'1980-01-01' AS Date), N'BORDO')
GO
INSERT [dbo].[pasaport] ([vid], [pasaport_no], [verilis_tarihi], [bitis_tarihi], [turu]) VALUES (5, N'105', CAST(N'2010-01-01' AS Date), CAST(N'2020-01-01' AS Date), N'SIYAH')
GO
INSERT [dbo].[pasaport] ([vid], [pasaport_no], [verilis_tarihi], [bitis_tarihi], [turu]) VALUES (6, N'106', CAST(N'2017-01-01' AS Date), CAST(N'2027-01-01' AS Date), N'YESIL')
GO
INSERT [dbo].[pasaport] ([vid], [pasaport_no], [verilis_tarihi], [bitis_tarihi], [turu]) VALUES (7, N'107', CAST(N'2019-01-01' AS Date), CAST(N'2024-01-01' AS Date), N'BORDO')
GO
INSERT [dbo].[pasaport] ([vid], [pasaport_no], [verilis_tarihi], [bitis_tarihi], [turu]) VALUES (8, N'108', CAST(N'2008-01-01' AS Date), CAST(N'2015-01-01' AS Date), N'GRI')
GO
INSERT [dbo].[pasaport] ([vid], [pasaport_no], [verilis_tarihi], [bitis_tarihi], [turu]) VALUES (9, N'109', CAST(N'2005-01-01' AS Date), CAST(N'2010-01-01' AS Date), N'YESIL')
GO
INSERT [dbo].[pasaport] ([vid], [pasaport_no], [verilis_tarihi], [bitis_tarihi], [turu]) VALUES (10, N'111', CAST(N'2000-01-01' AS Date), CAST(N'2010-01-01' AS Date), N'BORDO')
GO
INSERT [dbo].[pasaport] ([vid], [pasaport_no], [verilis_tarihi], [bitis_tarihi], [turu]) VALUES (11, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[pasaport] ([vid], [pasaport_no], [verilis_tarihi], [bitis_tarihi], [turu]) VALUES (12, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[pasaport] ([vid], [pasaport_no], [verilis_tarihi], [bitis_tarihi], [turu]) VALUES (13, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[pasaport] ([vid], [pasaport_no], [verilis_tarihi], [bitis_tarihi], [turu]) VALUES (14, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[pasaport] ([vid], [pasaport_no], [verilis_tarihi], [bitis_tarihi], [turu]) VALUES (15, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[saglik_bilgileri] ([vid], [kan_grubu], [yas], [boy], [kilo], [vki], [saglik_ocagi], [asi_id], [aile_hekimi]) VALUES (1, N'A+', 36, 1, 80, N'18', N'2 NOLU SAGLIK OCAGI', 324, N'SEMRA ADIGÜZEL')
GO
INSERT [dbo].[saglik_bilgileri] ([vid], [kan_grubu], [yas], [boy], [kilo], [vki], [saglik_ocagi], [asi_id], [aile_hekimi]) VALUES (2, N'B+', 24, 1, 89, N'16', N'17 NOLU SAGLIK OCAGI', 145, N'AHMET BEKTAS')
GO
INSERT [dbo].[saglik_bilgileri] ([vid], [kan_grubu], [yas], [boy], [kilo], [vki], [saglik_ocagi], [asi_id], [aile_hekimi]) VALUES (3, N'AB+', 42, 1, 54, N'21', N'5 NOLU SAGLIK OCAGI', 149, N'BERAT AKTAS')
GO
INSERT [dbo].[saglik_bilgileri] ([vid], [kan_grubu], [yas], [boy], [kilo], [vki], [saglik_ocagi], [asi_id], [aile_hekimi]) VALUES (4, N'A-', 62, 1, 47, N'19', N'6 NOLU SAGLIK OCAGI', 985, N'ENGIN ISÇI')
GO
INSERT [dbo].[saglik_bilgileri] ([vid], [kan_grubu], [yas], [boy], [kilo], [vki], [saglik_ocagi], [asi_id], [aile_hekimi]) VALUES (5, N'B-', 30, 1, 89, N'17', N'7 NOLU SAGLIK OCAGI', 850, N'FATOS ÖZSOY')
GO
INSERT [dbo].[saglik_bilgileri] ([vid], [kan_grubu], [yas], [boy], [kilo], [vki], [saglik_ocagi], [asi_id], [aile_hekimi]) VALUES (6, N'AB-', 17, 1, 110, N'18', N'8 NOLU SAGLIK OCAGI', 423, N'YELIZ TUNCER')
GO
INSERT [dbo].[saglik_bilgileri] ([vid], [kan_grubu], [yas], [boy], [kilo], [vki], [saglik_ocagi], [asi_id], [aile_hekimi]) VALUES (7, N'0+', 22, 1, 60, N'17', N'21 NOLU SAGLIK OCAGI', 192, N'CAN KIRIS')
GO
INSERT [dbo].[saglik_bilgileri] ([vid], [kan_grubu], [yas], [boy], [kilo], [vki], [saglik_ocagi], [asi_id], [aile_hekimi]) VALUES (8, N'0-', 48, 1, 72, N'19', N'47 NOLU SAGLIK OCAGI', 302, N'MEHMET AKSAÇ')
GO
INSERT [dbo].[saglik_bilgileri] ([vid], [kan_grubu], [yas], [boy], [kilo], [vki], [saglik_ocagi], [asi_id], [aile_hekimi]) VALUES (9, N'A+', 80, 1, 93, N'22', N'30 NOLU SAGLIK OCAGI', 106, N'FARUK YILMAZ')
GO
INSERT [dbo].[saglik_bilgileri] ([vid], [kan_grubu], [yas], [boy], [kilo], [vki], [saglik_ocagi], [asi_id], [aile_hekimi]) VALUES (10, N'B+', 72, 1, 51, N'21', N'41 NOLU SAGLIK OCAGI', 622, N'ZELAL ÇAKI')
GO
INSERT [dbo].[saglik_bilgileri] ([vid], [kan_grubu], [yas], [boy], [kilo], [vki], [saglik_ocagi], [asi_id], [aile_hekimi]) VALUES (11, N'AB+', 27, 1, 42, N'22', N'65 NOLU SAGLIK OCAGI', 333, N'MELIH CAN')
GO
INSERT [dbo].[saglik_bilgileri] ([vid], [kan_grubu], [yas], [boy], [kilo], [vki], [saglik_ocagi], [asi_id], [aile_hekimi]) VALUES (12, N'0+', 12, 1, 160, N'16', N'1 NOLU SAGLIK OCAGI', 754, N'CEM YETIS')
GO
INSERT [dbo].[saglik_bilgileri] ([vid], [kan_grubu], [yas], [boy], [kilo], [vki], [saglik_ocagi], [asi_id], [aile_hekimi]) VALUES (13, N'AB+', 54, 1, 110, N'18', N'9 NOLU SAGLIK OCAGI', 640, N'MEHMET KAÇMAZ')
GO
INSERT [dbo].[saglik_bilgileri] ([vid], [kan_grubu], [yas], [boy], [kilo], [vki], [saglik_ocagi], [asi_id], [aile_hekimi]) VALUES (14, N'A-', 42, 1, 90, N'19', N'19 NOLU SAGLIK OCAGI', 742, N'DURU KARADAG')
GO
INSERT [dbo].[saglik_bilgileri] ([vid], [kan_grubu], [yas], [boy], [kilo], [vki], [saglik_ocagi], [asi_id], [aile_hekimi]) VALUES (15, N'AB-', 43, 1, 72, N'17', N'49 NOLU SAGLIK OCAGI', 344, N'SIMAY ÜSTÜN')
GO
INSERT [dbo].[secim] ([vid], [sandik_no], [okul_adi]) VALUES (1, 10001, N'MUSTAFA KEMAL ILKOKULU')
GO
INSERT [dbo].[secim] ([vid], [sandik_no], [okul_adi]) VALUES (2, 10002, N'KAZIM KARABEKIR ILKOKULU')
GO
INSERT [dbo].[secim] ([vid], [sandik_no], [okul_adi]) VALUES (3, 10003, N'HACER ÖZER ILKOKULU')
GO
INSERT [dbo].[secim] ([vid], [sandik_no], [okul_adi]) VALUES (4, 10004, N'KEMAL KAYA ILKOKULU')
GO
INSERT [dbo].[secim] ([vid], [sandik_no], [okul_adi]) VALUES (5, 10005, N'HAZIM ERSU ILKOKULU')
GO
INSERT [dbo].[secim] ([vid], [sandik_no], [okul_adi]) VALUES (6, 10006, N'MUHIITIN ÜSTÜNDAG ILKOKULU')
GO
INSERT [dbo].[secim] ([vid], [sandik_no], [okul_adi]) VALUES (7, 10007, N'ATATÜRK ILKOKULU')
GO
INSERT [dbo].[secim] ([vid], [sandik_no], [okul_adi]) VALUES (8, 10008, N'CUMHURIYET ILKOKULU')
GO
INSERT [dbo].[secim] ([vid], [sandik_no], [okul_adi]) VALUES (9, 10009, N'ISTIKLAL ILKOKULU')
GO
INSERT [dbo].[secim] ([vid], [sandik_no], [okul_adi]) VALUES (10, 100011, N'ENVER KEMAL ILKOKULU')
GO
INSERT [dbo].[secim] ([vid], [sandik_no], [okul_adi]) VALUES (11, 100010, N'ISMET INÖNÜ ILKOKULU')
GO
INSERT [dbo].[secim] ([vid], [sandik_no], [okul_adi]) VALUES (12, 100012, N'NALBANTOGLU ILKOKULU')
GO
INSERT [dbo].[secim] ([vid], [sandik_no], [okul_adi]) VALUES (13, 100013, N'ISTANBULLUOGLU ILKOKULU')
GO
INSERT [dbo].[secim] ([vid], [sandik_no], [okul_adi]) VALUES (14, 100014, N'ERDOGAN ILKOKULU')
GO
INSERT [dbo].[secim] ([vid], [sandik_no], [okul_adi]) VALUES (15, 100015, N'EMINE ILKOKULU')
GO
INSERT [dbo].[vatandaslar] ([vid], [tc], [sifre], [isim], [soyisim], [cinsiyet], [dogum_tarihi], [posta_kodu], [adres], [il], [mahalle], [ilce], [dogum_yeri], [guvenlik_sorusu], [guvenlik_sorusu_cevap]) VALUES (1, N'11111111111', N'f3998dea15ac7e405647835c0af7a3a4', N'HASAN', N'OKÇU', N'ERKEK', CAST(N'1986-10-24' AS Date), N'34062', N'KOZ SOKAK NO:43', N'ISTANBUL', N'YENIGÜN', N'BAGCILAR', N'KONYA', N'İlk evcil hayvanınızın adı?', N'Tarçın')
GO
INSERT [dbo].[vatandaslar] ([vid], [tc], [sifre], [isim], [soyisim], [cinsiyet], [dogum_tarihi], [posta_kodu], [adres], [il], [mahalle], [ilce], [dogum_yeri], [guvenlik_sorusu], [guvenlik_sorusu_cevap]) VALUES (2, N'22222222222', NULL, N'SERDAR', N'KARAHAN', N'ERKEK', CAST(N'1998-01-19' AS Date), N'59930', N'DEGIRMEN SOKAK NO:14', N'TEKIRDAG', N'ÇINAR', N'ERGENE', N'ANKARA', N'Annenizin kızlık soyadı?', N'ağaç')
GO
INSERT [dbo].[vatandaslar] ([vid], [tc], [sifre], [isim], [soyisim], [cinsiyet], [dogum_tarihi], [posta_kodu], [adres], [il], [mahalle], [ilce], [dogum_yeri], [guvenlik_sorusu], [guvenlik_sorusu_cevap]) VALUES (3, N'33333333333', N'e87cac3f8b3a72694cbe64011a156197', N'HÜSEYIN', N'YAVUZ', N'ERKEK', CAST(N'1980-10-10' AS Date), N'07090', N'NERGIS SOKAK NO:29', N'ANTALYA', N'YOKUS', N'KEPEZ', N'ANTALYA', N'En sevdiğiniz yemek?', N'pırasa')
GO
INSERT [dbo].[vatandaslar] ([vid], [tc], [sifre], [isim], [soyisim], [cinsiyet], [dogum_tarihi], [posta_kodu], [adres], [il], [mahalle], [ilce], [dogum_yeri], [guvenlik_sorusu], [guvenlik_sorusu_cevap]) VALUES (4, N'44444444444', NULL, N'YASEMIN', N'SARI', N'KADIN', CAST(N'1960-06-27' AS Date), N'10840', N'KARESI SOKAK NO:10', N'BALIKESIR', N'ALADAG', N'BALYA', N'BURSA', N'İlk aracınızın modeli?', N'i8')
GO
INSERT [dbo].[vatandaslar] ([vid], [tc], [sifre], [isim], [soyisim], [cinsiyet], [dogum_tarihi], [posta_kodu], [adres], [il], [mahalle], [ilce], [dogum_yeri], [guvenlik_sorusu], [guvenlik_sorusu_cevap]) VALUES (5, N'55555555555', N'67b9892a70424d7eb325e50fd64fe68a', N'DERYA', N'PIRLANTA', N'KADIN', CAST(N'1992-10-10' AS Date), N'16245', N'ATALAR NO:7', N'BURSA', N'CUMHURIYET', N'ORHANGAZI', N'IZMIR', N'Annenizin kızlık soyadı?', N'uyak')
GO
INSERT [dbo].[vatandaslar] ([vid], [tc], [sifre], [isim], [soyisim], [cinsiyet], [dogum_tarihi], [posta_kodu], [adres], [il], [mahalle], [ilce], [dogum_yeri], [guvenlik_sorusu], [guvenlik_sorusu_cevap]) VALUES (6, N'66666666666', N'59b2ffb75a7ab7443bcefcdb95c1cb0e', N'ENES', N'SEKSEK', N'ERKEK', CAST(N'2005-05-05' AS Date), N'01100', N'HÜRRIYET SOKAK NO:01', N'ADANA', N'HÜRRIYET', N'GÜRBÜZ', N'SANLIURFA', N'Çocukluk lakabınız?', N'müco')
GO
INSERT [dbo].[vatandaslar] ([vid], [tc], [sifre], [isim], [soyisim], [cinsiyet], [dogum_tarihi], [posta_kodu], [adres], [il], [mahalle], [ilce], [dogum_yeri], [guvenlik_sorusu], [guvenlik_sorusu_cevap]) VALUES (7, N'77777777777', NULL, N'MUSTAFA', N'PEKMEZ', N'ERKEK', CAST(N'2000-12-03' AS Date), N'35870', N'LALE SOKAK NO:84', N'IZMIR', N'VATAN', N'KARABAGLAR', N'IZMIR', N'En sevdiğiniz yemek?', N'kebap')
GO
INSERT [dbo].[vatandaslar] ([vid], [tc], [sifre], [isim], [soyisim], [cinsiyet], [dogum_tarihi], [posta_kodu], [adres], [il], [mahalle], [ilce], [dogum_yeri], [guvenlik_sorusu], [guvenlik_sorusu_cevap]) VALUES (8, N'88888888888', NULL, N'DILARA', N'HACI', N'KADIN', CAST(N'1974-01-21' AS Date), N'04210', N'DIKMEN SOKAK NO:4', N'AGRI', N'KATOS', N'PATNOS', N'IGDIR', N'En sevdiğiniz yemek?', N'mantı')
GO
INSERT [dbo].[vatandaslar] ([vid], [tc], [sifre], [isim], [soyisim], [cinsiyet], [dogum_tarihi], [posta_kodu], [adres], [il], [mahalle], [ilce], [dogum_yeri], [guvenlik_sorusu], [guvenlik_sorusu_cevap]) VALUES (9, N'99999999999', NULL, N'HÜSNIYE', N'DURMAZ', N'KADIN', CAST(N'1942-05-10' AS Date), N'25940', N'DADAS SOKAK NO:34', N'ERZURUM', N'AZIZIYE', N'ASKALE', N'KARS', N'Annenizin kızlık soyadı?', N'kolon')
GO
INSERT [dbo].[vatandaslar] ([vid], [tc], [sifre], [isim], [soyisim], [cinsiyet], [dogum_tarihi], [posta_kodu], [adres], [il], [mahalle], [ilce], [dogum_yeri], [guvenlik_sorusu], [guvenlik_sorusu_cevap]) VALUES (10, N'10101010101', NULL, N'ALI', N'SARSILMAZ', N'ERKEK', CAST(N'1950-11-11' AS Date), N'38420', N'RÜZGAR SOKAK NO:70', N'KAYSERI', N'HACILAR', N'DEVELI', N'KAYSERI', N'Çocukluk lakabınız?', N'fırlama')
GO
INSERT [dbo].[vatandaslar] ([vid], [tc], [sifre], [isim], [soyisim], [cinsiyet], [dogum_tarihi], [posta_kodu], [adres], [il], [mahalle], [ilce], [dogum_yeri], [guvenlik_sorusu], [guvenlik_sorusu_cevap]) VALUES (11, N'10111111111', NULL, N'SONGÜL', N'DEMIRCI', N'KADIN', CAST(N'1995-02-25' AS Date), N'55930', N'HUDUT SOKAK NO:15', N'SAMSUN', N'KATIRCILAR', N'LADIK', N'ORDU', N'Annenizin kızlık soyadı?', N'paşa')
GO
INSERT [dbo].[vatandaslar] ([vid], [tc], [sifre], [isim], [soyisim], [cinsiyet], [dogum_tarihi], [posta_kodu], [adres], [il], [mahalle], [ilce], [dogum_yeri], [guvenlik_sorusu], [guvenlik_sorusu_cevap]) VALUES (12, N'12121212121', NULL, N'BEYZA', N'ÖMÜR', N'KADIN', CAST(N'2010-05-09' AS Date), N'20129', N'DURULMAZ SOKAK NO:13', N'DENIZLI', N'DEMOKRASI', N'BEYAGAÇ', N'AYDIN', N'En sevdiğiniz yemek?', N'sarma')
GO
INSERT [dbo].[vatandaslar] ([vid], [tc], [sifre], [isim], [soyisim], [cinsiyet], [dogum_tarihi], [posta_kodu], [adres], [il], [mahalle], [ilce], [dogum_yeri], [guvenlik_sorusu], [guvenlik_sorusu_cevap]) VALUES (13, N'13131313131', NULL, N'SILAN', N'AGRI', N'KADIN', CAST(N'1968-09-17' AS Date), N'47850', N'ARTUK SOKAK NO:4', N'MARDIN', N'ÖMERLI', N'MAZIDAGI', N'BATMAN', N'Çocukluk lakabınız?', N'çiko')
GO
INSERT [dbo].[vatandaslar] ([vid], [tc], [sifre], [isim], [soyisim], [cinsiyet], [dogum_tarihi], [posta_kodu], [adres], [il], [mahalle], [ilce], [dogum_yeri], [guvenlik_sorusu], [guvenlik_sorusu_cevap]) VALUES (14, N'14141414141', NULL, N'MAHSUN', N'DELI', N'ERKEK', CAST(N'1980-07-20' AS Date), N'21302', N'KIRAGI SOKAK NO:5', N'DIYARBAKIR', N'KADER', N'HAZRO', N'MUS', N'Annenizin kızlık soyadı?', N'ekin')
GO
INSERT [dbo].[vatandaslar] ([vid], [tc], [sifre], [isim], [soyisim], [cinsiyet], [dogum_tarihi], [posta_kodu], [adres], [il], [mahalle], [ilce], [dogum_yeri], [guvenlik_sorusu], [guvenlik_sorusu_cevap]) VALUES (15, N'15151515151', NULL, N'ALEV', N'PAYKAL', N'KADIN', CAST(N'1979-11-30' AS Date), N'62510', N'DEVRIM SOKAK NO:54', N'TUNCELI', N'MUSKI', N'ÇEMISGEZEK', N'ELAZIG', N'Çocukluk lakabınız?', N'kalem')
GO
INSERT [dbo].[vergi] ([vid], [borc], [vergi_tipi], [vergi_no]) VALUES (1, 1000, N'GELIR VERGISI', N'9001')
GO
INSERT [dbo].[vergi] ([vid], [borc], [vergi_tipi], [vergi_no]) VALUES (2, 9856, N'GELIR VERGISI', N'9002')
GO
INSERT [dbo].[vergi] ([vid], [borc], [vergi_tipi], [vergi_no]) VALUES (3, 67478, N'TASIT VERGISI', N'9003')
GO
INSERT [dbo].[vergi] ([vid], [borc], [vergi_tipi], [vergi_no]) VALUES (4, 784, N'EMLAK VERGISI', N'9004')
GO
INSERT [dbo].[vergi] ([vid], [borc], [vergi_tipi], [vergi_no]) VALUES (5, 100780, N'GELIR VERGISI', N'9005')
GO
INSERT [dbo].[vergi] ([vid], [borc], [vergi_tipi], [vergi_no]) VALUES (6, NULL, NULL, NULL)
GO
INSERT [dbo].[vergi] ([vid], [borc], [vergi_tipi], [vergi_no]) VALUES (7, 107, N'DAMGA VERGISI', N'9006')
GO
INSERT [dbo].[vergi] ([vid], [borc], [vergi_tipi], [vergi_no]) VALUES (8, 24000, N'GELIR VERGISI', N'9007')
GO
INSERT [dbo].[vergi] ([vid], [borc], [vergi_tipi], [vergi_no]) VALUES (9, 98000, N'TASIT VERGISI', N'9008')
GO
INSERT [dbo].[vergi] ([vid], [borc], [vergi_tipi], [vergi_no]) VALUES (10, 47000, N'GELIR VERGISI', N'9009')
GO
INSERT [dbo].[vergi] ([vid], [borc], [vergi_tipi], [vergi_no]) VALUES (11, 2000, N'GELIR VERGISI', N'9010')
GO
INSERT [dbo].[vergi] ([vid], [borc], [vergi_tipi], [vergi_no]) VALUES (12, NULL, NULL, NULL)
GO
INSERT [dbo].[vergi] ([vid], [borc], [vergi_tipi], [vergi_no]) VALUES (13, 714, N'GELIR VERGISI', N'9011')
GO
INSERT [dbo].[vergi] ([vid], [borc], [vergi_tipi], [vergi_no]) VALUES (14, 7014, N'TASIT VERGISI', N'9012')
GO
INSERT [dbo].[vergi] ([vid], [borc], [vergi_tipi], [vergi_no]) VALUES (15, 147, N'EGLENCE VERGISI', N'9013')
GO
ALTER TABLE [dbo].[adli_sicil]  WITH CHECK ADD  CONSTRAINT [FK__adli_sicil__vid__276EDEB3] FOREIGN KEY([vid])
REFERENCES [dbo].[vatandaslar] ([vid])
GO
ALTER TABLE [dbo].[adli_sicil] CHECK CONSTRAINT [FK__adli_sicil__vid__276EDEB3]
GO
ALTER TABLE [dbo].[askerlik_bilgileri]  WITH CHECK ADD  CONSTRAINT [FK__askerlik_bi__vid__25869641] FOREIGN KEY([vid])
REFERENCES [dbo].[vatandaslar] ([vid])
GO
ALTER TABLE [dbo].[askerlik_bilgileri] CHECK CONSTRAINT [FK__askerlik_bi__vid__25869641]
GO
ALTER TABLE [dbo].[egitim_bilgileri]  WITH CHECK ADD  CONSTRAINT [FK__egitim_bilg__vid__2B3F6F97] FOREIGN KEY([vid])
REFERENCES [dbo].[vatandaslar] ([vid])
GO
ALTER TABLE [dbo].[egitim_bilgileri] CHECK CONSTRAINT [FK__egitim_bilg__vid__2B3F6F97]
GO
ALTER TABLE [dbo].[ehliyet]  WITH CHECK ADD  CONSTRAINT [FK__ehliyet__vid__440B1D61] FOREIGN KEY([vid])
REFERENCES [dbo].[vatandaslar] ([vid])
GO
ALTER TABLE [dbo].[ehliyet] CHECK CONSTRAINT [FK__ehliyet__vid__440B1D61]
GO
ALTER TABLE [dbo].[emekli]  WITH CHECK ADD  CONSTRAINT [FK__emekli__vid__2F10007B] FOREIGN KEY([vid])
REFERENCES [dbo].[vatandaslar] ([vid])
GO
ALTER TABLE [dbo].[emekli] CHECK CONSTRAINT [FK__emekli__vid__2F10007B]
GO
ALTER TABLE [dbo].[evcil_hayvan]  WITH CHECK ADD  CONSTRAINT [FK__evcil_hayva__vid__2D27B809] FOREIGN KEY([vid])
REFERENCES [dbo].[vatandaslar] ([vid])
GO
ALTER TABLE [dbo].[evcil_hayvan] CHECK CONSTRAINT [FK__evcil_hayva__vid__2D27B809]
GO
ALTER TABLE [dbo].[pasaport]  WITH CHECK ADD  CONSTRAINT [FK__pasaport__vid__32E0915F] FOREIGN KEY([vid])
REFERENCES [dbo].[vatandaslar] ([vid])
GO
ALTER TABLE [dbo].[pasaport] CHECK CONSTRAINT [FK__pasaport__vid__32E0915F]
GO
ALTER TABLE [dbo].[saglik_bilgileri]  WITH CHECK ADD FOREIGN KEY([asi_id])
REFERENCES [dbo].[asi_bilgisi] ([asi_id])
GO
ALTER TABLE [dbo].[saglik_bilgileri]  WITH CHECK ADD  CONSTRAINT [FK__saglik_bilg__vid__412EB0B6] FOREIGN KEY([vid])
REFERENCES [dbo].[vatandaslar] ([vid])
GO
ALTER TABLE [dbo].[saglik_bilgileri] CHECK CONSTRAINT [FK__saglik_bilg__vid__412EB0B6]
GO
ALTER TABLE [dbo].[secim]  WITH CHECK ADD  CONSTRAINT [FK__secim__vid__29572725] FOREIGN KEY([vid])
REFERENCES [dbo].[vatandaslar] ([vid])
GO
ALTER TABLE [dbo].[secim] CHECK CONSTRAINT [FK__secim__vid__29572725]
GO
ALTER TABLE [dbo].[vergi]  WITH CHECK ADD  CONSTRAINT [FK__vergi__vid__30F848ED] FOREIGN KEY([vid])
REFERENCES [dbo].[vatandaslar] ([vid])
GO
ALTER TABLE [dbo].[vergi] CHECK CONSTRAINT [FK__vergi__vid__30F848ED]
GO
