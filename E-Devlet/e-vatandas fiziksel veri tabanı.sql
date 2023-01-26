CREATE DATABASE e_vatandas;
USE e_vatandas;

CREATE TABLE vatandaslar(
vid INTEGER  NOT NULL,
tc NVARCHAR(20),
sifre char(32),
isim NVARCHAR(30),
soyisim NVARCHAR(30),
cinsiyet varchar(5),
dogum_tarihi DATE,
posta_kodu VARCHAR(5),
adres NVARCHAR (200),
il NVARCHAR(20),
mahalle NVARCHAR (30),
ilce NVARCHAR(20),
dogum_yeri NVARCHAR(20),
guvenlik_sorusu nvarchar(100),
guvenlik_sorusu_cevap nvarchar(50),
PRIMARY KEY (vid));

CREATE TABLE askerlik_bilgileri(
vid INTEGER NOT NULL,
kuvvet NVARCHAR(50),
sinif NVARCHAR(50),
baslangic_tarihi DATE,
bitis_tarihi DATE,
birlik NVARCHAR(50),
askerlik_durumu NVARCHAR(20),
FOREIGN KEY (vid) REFERENCES vatandaslar);

CREATE TABLE adli_sicil(
vid INTEGER NOT NULL,
sicil_no INTEGER,
dosya_no INTEGER,
FOREIGN KEY (vid) REFERENCES vatandaslar);

CREATE TABLE secim(
vid INTEGER NOT NULL,
sandik_no INTEGER,
okul_adi NVARCHAR (50),
FOREIGN KEY (vid) REFERENCES vatandaslar);

CREATE TABLE egitim_bilgileri(
vid INTEGER NOT NULL,
okul_adi NVARCHAR(50),
egitim_durumu NVARCHAR(20),
mezuniyet_tarihi DATE,
burs NVARCHAR(20),
diploma_notu SMALLINT,
mezuniyet_durumu NVARCHAR(20),
FOREIGN KEY (vid) REFERENCES vatandaslar);

CREATE TABLE evcil_hayvan(
vid INTEGER NOT NULL,
cip_no VARCHAR(10),
isim NVARCHAR(20),
tur NVARCHAR (20),
kuduz_asi_durumu NVARCHAR(10),
FOREIGN KEY (vid) REFERENCES vatandaslar);

CREATE TABLE emekli(
vid INTEGER NOT NULL,
emekli_turu NVARCHAR(20),
prim_gunu INTEGER,
giris_tarihi DATE,
cikis_tarihi DATE,
FOREIGN KEY (vid) REFERENCES vatandaslar);

CREATE TABLE vergi(
vid INTEGER NOT NULL, 
borc INTEGER, 
vergi_tipi NVARCHAR (20),
vergi_no VARCHAR(10),
FOREIGN KEY (vid) REFERENCES vatandaslar);

CREATE TABLE pasaport(
vid INTEGER NOT NULL,
pasaport_no VARCHAR(10),
verilis_tarihi DATE,
bitis_tarihi DATE,
turu NVARCHAR(20),
FOREIGN KEY (vid) REFERENCES vatandaslar);

CREATE TABLE asi_bilgisi(
asi_id int NOT NULL,
doz SMALLINT,
asi_isim NVARCHAR(20),
yapilan_tarih DATE,
PRIMARY KEY (asi_id));

CREATE TABLE saglik_bilgileri(
vid INTEGER NOT NULL,
kan_grubu NVARCHAR(5),
yas SMALLINT,
boy SMALLINT,
kilo SMALLINT,
vki varchar(5),
saglik_ocagi NVARCHAR(100),
asi_id int,
aile_hekimi NVARCHAR(50),
FOREIGN KEY (vid) REFERENCES vatandaslar,
FOREIGN KEY (asi_id) REFERENCES asi_bilgisi);

CREATE TABLE ehliyet(
vid INTEGER NOT NULL,
sinifi VARCHAR(5),
ceza_puani INTEGER,
ehliyet_no VARCHAR(20),
verilme_tarihi DATE,
FOREIGN KEY (vid) REFERENCES vatandaslar);






