CREATE DATABASE QLBH
use QLBH

-- CREATE TABLE
DROP TABLE KHACHHANG
DROP TABLE NHANVIEN
DROP TABLE SANPHAM
DROP TABLE HOADON
DROP TABLE CTHD


ALTER TABLE KHOA
DROP CONSTRAINT FK_KHOA_GV

CREATE TABLE KHACHHANG
(
	MAKH char(4),
	HOTEN varchar(40),
	DCHI varchar(50),
	SODT varchar(20),
	NGSINH datetime,
	DOANHSO money,
	NGDK datetime,
)

CREATE TABLE NHANVIEN
(
	MANV char(4),
	HOTEN varchar(40),
	SODT varchar(20),
	NGVL datetime
)

CREATE TABLE SANPHAM 
(
	MASP char(4),
	TENSP varchar(40),
	DVT varchar(20),
	NUOCSX varchar(40),
	GIA money
)

CREATE TABLE HOADON 
( 
	SOHD int,
	NGHD datetime,
	MAKH char(4),
	MANV char(4),
	TRIGIA money
)

CREATE TABLE CTHD 
(
	SOHD int,
	MASP char(4),
	SL int
)


--DEFINE NOT NULL
ALTER TABLE KHACHHANG
ALTER COLUMN MAKH
char(4) NOT NULL;

ALTER TABLE NHANVIEN
ALTER COLUMN MANV
char(4) NOT NULL;

ALTER TABLE SANPHAM
ALTER COLUMN MASP
char(4) NOT NULL;

ALTER TABLE HOADON
ALTER COLUMN SOHD
int NOT NULL;

ALTER TABLE CTHD
ALTER COLUMN MASP
char(4) NOT NULL;

ALTER TABLE CTHD
ALTER COLUMN SOHD
int NOT NULL;


--ADD PRIMARY KEY
ALTER TABLE KHACHHANG
ADD CONSTRAINT PK_KH PRIMARY KEY (MAKH)

ALTER TABLE NHANVIEN
ADD CONSTRAINT PK_NV PRIMARY KEY (MANV)

ALTER TABLE SANPHAM
ADD CONSTRAINT PK_SP PRIMARY KEY (MASP)

ALTER TABLE HOADON
ADD CONSTRAINT PK_HD PRIMARY KEY (SOHD)

ALTER TABLE CTHD 
ADD CONSTRAINT PK_CTHD PRIMARY KEY (SOHD, MASP)


--ADD FOREIGN KEY
ALTER TABLE HOADON ADD
CONSTRAINT FK_HD_NV FOREIGN KEY (MANV) REFERENCES NHANVIEN(MANV),
CONSTRAINT FK_HD_KH FOREIGN KEY (MAKH) REFERENCES KHACHHANG(MAKH)

ALTER TABLE CTHD ADD
CONSTRAINT FK_CTHD_HD FOREIGN KEY (SOHD) REFERENCES HOADON(SOHD),
CONSTRAINT FK_CTHD_SP FOREIGN KEY (MASP) REFERENCES SANPHAM(MASP)


--IMPORT DATA
INSERT INTO NHANVIEN (MANV, HOTEN, SODT, NGVL)
VALUES
('NV01', 'Nguyen Nhu Nhut', '0927345678', '2006/04/13'),
('NV02', 'Le Thi Phi Yen', '0987567390', '2006/04/21'),
('NV03', 'Nguyen Van B', '0997047382', '2006/04/27'),
('NV04', 'Ngo Thanh Tuan', '0913758498', '2006/04/24'),
('NV05', 'Nguyen Thi Truc Thanh', '0918590387', '2006/07/20')

INSERT INTO KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK)
VALUES
('KH01', 'Nguyen Van A', '731 Tran Hung Dao, Q5, TpHCM', '08823451', '1960-10-22', 13060000, '2006-07-22'),
('KH02', 'Tran Ngoc Han', '23/5 Nguyen Trai, Q5, TpHCM', '0908256478', '1974-04-03', 280000, '2006-07-30'),
('KH03', 'Tran Ngoc Linh', '45 Nguyen Canh Chan, Q1, TpHCM', '0938776266', '1980-06-12', 3860000, '2006-08-05'),
('KH04', 'Tran Minh Long', '50/34 Le Dai Hanh, Q10, TpHCM', '0917325476', '1965-03-09', 250000, '2006-10-02'),
('KH05', 'Le Nhat Minh', '34 Truong Dinh, Q3, TpHCM', '08246108', '1950-03-10', 21000, '2006-10-28'),
('KH06', 'Le Hoai Thuong', '227 Nguyen Van Cu, Q5, TpHCM', '08631738', '1981-12-31', 915000, '2006-11-24'),
('KH07', 'Nguyen Van Tam', '32/3 Tran Binh Trong, Q5, TpHCM', '0916783565', '1971-04-06', 12500, '2006-12-01'),
('KH08', 'Phan Thi Thanh', '45/2 An Duong Vuong, Q5, TpHCM', '0938435756', '1971-01-10', 365000, '2006-12-13'),
('KH09', 'Le Ha Vinh', '873 Le Hong Phong, Q5, TpHCM', '08654763', '1979-09-03', 70000, '2007-01-14'),
('KH10', 'Ha Duy Lap', '34/34B Nguyen Trai, Q1, TpHCM', '08768904', '1983-05-02', 67500, '2007-01-16');

INSERT INTO SANPHAM (MASP, TENSP, DVT, NUOCSX, GIA)
VALUES
('BC01', 'But chi', 'cay', 'Singapore', 3000),
('BC02', 'But chi', 'cay', 'Singapore', 5000),
('BC03', 'But chi', 'cay', 'Viet Nam', 3500),
('BC04', 'But chi', 'hop', 'Viet Nam', 30000),
('BB01', 'But bi', 'cay', 'Viet Nam', 5000),
('BB02', 'But bi', 'cay', 'Trung Quoc', 7000),
('BB03', 'But bi', 'hop', 'Thai Lan', 100000),
('TV01', 'Tap 100 giay mong', 'quyen', 'Trung Quoc', 2500),
('TV02', 'Tap 200 giay mong', 'quyen', 'Trung Quoc', 4500),
('TV03', 'Tap 100 giay tot', 'quyen', 'Viet Nam', 3000),
('TV04', 'Tap 200 giay tot', 'quyen', 'Viet Nam', 5500),
('TV05', 'Tap 100 trang', 'chuc', 'Viet Nam', 23000),
('TV06', 'Tap 200 trang', 'chuc', 'Viet Nam', 53000),
('TV07', 'Tap 100 trang', 'chuc', 'Trung Quoc', 34000),
('ST01', 'So tay 500 trang', 'quyen', 'Trung Quoc', 40000),
('ST02', 'So tay loai 1', 'quyen', 'Viet Nam', 55000),
('ST03', 'So tay loai 2', 'quyen', 'Viet Nam', 51000),
('ST04', 'So tay', 'quyen', 'Thai Lan', 55000),
('ST05', 'So tay mong', 'quyen', 'Thai Lan', 20000),
('ST06', 'Phan viet bang', 'hop', 'Viet Nam', 5000),
('ST07', 'Phan khong bui', 'hop', 'Viet Nam', 7000),
('ST08', 'Bong bang', 'cai', 'Viet Nam', 1000),
('ST09', 'But long', 'cay', 'Viet Nam', 5000),
('ST10', 'But long', 'cay', 'Trung Quoc', 7000);

INSERT INTO HOADON (SOHD, NGHD, MAKH, MANV, TRIGIA)
VALUES
(1001, '2006-07-23', 'KH01', 'NV01', 320000),
(1002, '2006-08-12', 'KH01', 'NV02', 840000),
(1003, '2006-08-23', 'KH02', 'NV01', 100000),
(1004, '2006-09-01', 'KH02', 'NV01', 180000),
(1005, '2006-10-20', 'KH01', 'NV02', 3800000),
(1006, '2006-10-16', 'KH01', 'NV03', 2430000),
(1007, '2006-10-28', 'KH03', 'NV03', 510000),
(1008, '2006-10-28', 'KH01', 'NV03', 440000),
(1009, '2006-10-28', 'KH03', 'NV04', 200000),
(1010, '2006-11-01', 'KH01', 'NV01', 5200000),
(1011, '2006-11-04', 'KH04', 'NV03', 250000),
(1012, '2006-11-30', 'KH05', 'NV03', 21000),
(1013, '2006-12-12', 'KH06', 'NV01', 5000),
(1014, '2006-12-31', 'KH03', 'NV02', 3150000),
(1015, '2007-01-01', 'KH06', 'NV01', 910000),
(1016, '2007-01-01', 'KH07', 'NV02', 12500),
(1017, '2007-01-02', 'KH08', 'NV03', 35000),
(1018, '2007-01-13', 'KH08', 'NV03', 330000),
(1019, '2007-01-13', 'KH01', 'NV03', 30000),
(1020, '2007-01-14', 'KH09', 'NV04', 70000),
(1021, '2007-01-16', 'KH10', 'NV03', 67500),
(1022, '2007-01-16', NULL, 'NV03', 7000),
(1023, '2007-01-17', NULL, 'NV01', 330000);

INSERT INTO CTHD (SOHD, MASP, SL)
VALUES
(1001, 'TV02', 10),
(1001, 'ST01', 5),
(1001, 'BC01', 5),
(1001, 'BC02', 10),
(1001, 'ST08', 10),
(1002, 'BC04', 20),
(1002, 'BB01', 20),
(1002, 'BB02', 20),
(1003, 'BB03', 10),
(1004, 'TV01', 20),
(1004, 'TV02', 10),
(1004, 'TV03', 10),
(1004, 'TV04', 10),
(1005, 'TV05', 50),
(1005, 'TV06', 50),
(1006, 'TV07', 20),
(1006, 'ST01', 30),
(1006, 'ST02', 10),
(1007, 'ST03', 10),
(1008, 'ST04', 8),
(1009, 'ST05', 10),
(1010, 'TV07', 50),
(1010, 'ST07', 50),
(1010, 'ST08', 100),
(1010, 'ST04', 50),
(1010, 'TV03', 100),
(1011, 'ST06', 50),
(1012, 'ST07', 3),
(1013, 'ST08', 5),
(1014, 'BC02', 80),
(1014, 'BB02', 100),
(1014, 'BC04', 60),
(1014, 'BB01', 50),
(1015, 'BB02', 30),
(1015, 'BB03', 7),
(1016, 'TV01', 5),
(1017, 'TV02', 1),
(1017, 'TV03', 1),
(1017, 'TV04', 5),
(1018, 'ST04', 6),
(1019, 'ST05', 1),
(1019, 'ST06', 2),
(1020, 'ST07', 10),
(1021, 'ST08', 5),
(1021, 'TV01', 7),
(1021, 'TV02', 10),
(1022, 'ST07', 1),
(1023, 'ST04', 6),
(1023, 'BB02', 6),
(1023, 'TV01', 6),
(1023, 'TV02', 6),
(1023, 'TV07', 6),
(1023, 'ST01', 6),
(1023, 'ST10', 6);

SELECT * FROM KHACHHANG
SELECT * FROM NHANVIEN
SELECT * FROM SANPHAM
SELECT * FROM HOADON
SELECT * FROM CTHD
--CAU I.2
ALTER TABLE SANPHAM 
ADD GHICHU varchar(20)

--CAU I.3
ALTER TABLE KHACHHANG
ADD LOAIKH tinyint

--CAU I.4
ALTER TABLE SANPHAM
ALTER COLUMN GHICHU varchar(100)

--CAU I.5
ALTER TABLE SANPHAM
DROP COLUMN GHICHU

--CAU I.6
ALTER TABLE KHACHHANG
ALTER COLUMN LOAIKH varchar(10)

--CAU I.7
ALTER TABLE SANPHAM
ADD CONSTRAINT CK_DVT CHECK (DVT IN ('cay','hop','cai','quyen','chuc'))

--CAU I.8
ALTER TABLE SANPHAM
ADD CONSTRAINT CK_GIA CHECK (GIA >= 500)

--CAU I.9
ALTER TABLE CTHD
ADD CONSTRAINT CK_SL CHECK (SL >= 1)

--CAU I.10
ALTER TABLE KHACHHANG
ADD CONSTRAINT CK_NGDK CHECK (NGDK > NGSINH)

--CAU II.2
SELECT * INTO SANPHAM1 FROM SANPHAM
SELECT * INTO KHACHHANG1 FROM KHACHHANG

--CAU II.3
UPDATE SANPHAM1
SET GIA += GIA * 5 / 100
WHERE NUOCSX = 'Thai Lan'

SELECT * FROM SANPHAM1
SELECT * FROM KHACHHANG1

--CAU II.4
UPDATE SANPHAM1
SET GIA -= GIA * 5 /100
WHERE NUOCSX = 'Trung Quoc' AND GIA <= 10000

--CAU II.5
UPDATE KHACHHANG1
SET LOAIKH = 'Vip'
WHERE (NGDK < '2007-01-01' AND DOANHSO >= 10000000) OR (NGDK >= '2007-01-01' AND DOANHSO >= 2000000)

--CAU III.1
SELECT MASP, TENSP FROM SANPHAM
WHERE NUOCSX = 'Trung Quoc'

--CAU III.2
SELECT MASP, TENSP FROM SANPHAM
WHERE DVT = 'cay' OR DVT = 'quyen'

--CAU III.3
SELECT MASP, TENSP FROM SANPHAM
WHERE (LEFT(MASP,1) = 'B') AND (RIGHT(MASP,2) = '01')

--CAU III.4
SELECT MASP, TENSP FROM SANPHAM
WHERE (NUOCSX = 'Trung Quoc') AND (GIA BETWEEN 30000 AND 40000)

--CAU III.5
SELECT * FROM SANPHAM
SELECT MASP, TENSP FROM SANPHAM
WHERE (NUOCSX = 'Trung Quoc' OR NUOCSX = 'Thai Lan') AND (GIA BETWEEN 30000 AND 40000)

--CAU III.6
SELECT * FROM HOADON
SELECT SOHD, TRIGIA FROM HOADON
WHERE (NGHD = '2007-01-01') OR (NGHD = '2007-01-02')

--CAU III.7
SELECT * FROM HOADON
SELECT SOHD, TRIGIA FROM HOADON
WHERE (NGHD BETWEEN '2007-01-01' AND '2007-01-31')
ORDER BY NGHD ASC, TRIGIA DESC

--CAU III.8
SELECT * FROM KHACHHANG
SELECT * FROM HOADON
SELECT KHACHHANG.MAKH, HOTEN FROM KHACHHANG
	INNER JOIN HOADON ON KHACHHANG.MAKH = HOADON.MAKH
WHERE NGHD = '2007-01-01'

--CAU III.9
SELECT * FROM HOADON
SELECT * FROM NHANVIEN
SELECT SOHD, TRIGIA FROM HOADON
	INNER JOIN NHANVIEN ON HOADON.MANV = NHANVIEN.MANV
WHERE (NGHD = '2006-10-28') AND (HOTEN = 'Nguyen Van B')

--CAU III.10
SELECT * FROM SANPHAM
SELECT * FROM CTHD
SELECT * FROM HOADON
SELECT * FROM KHACHHANG
SELECT SANPHAM.MASP, TENSP FROM SANPHAM
	INNER JOIN CTHD ON SANPHAM.MASP = CTHD.MASP
	INNER JOIN HOADON ON CTHD.SOHD = HOADON.SOHD
	INNER JOIN KHACHHANG ON HOADON.MAKH = KHACHHANG.MAKH
WHERE (HOTEN = 'Nguyen Van A') AND (YEAR(NGHD) = 2006 AND MONTH(NGHD) = 10) 

--CAU III.11
SELECT * FROM HOADON
SELECT * FROM CTHD
SELECT * FROM SANPHAM
SELECT DISTINCT HOADON.SOHD FROM HOADON
	INNER JOIN CTHD ON HOADON.SOHD = CTHD.SOHD
	INNER JOIN SANPHAM ON CTHD.MASP = SANPHAM.MASP
WHERE SANPHAM.MASP = 'BB01' OR SANPHAM.MASP = 'BB02'

--CAU III.12
SELECT DISTINCT SOHD FROM CTHD
	INNER JOIN SANPHAM ON CTHD.MASP = SANPHAM.MASP
WHERE (CTHD.MASP = 'BB01' OR CTHD.MASP = 'BB02') AND SL BETWEEN 10 AND 20

--CAU III.13
SELECT DISTINCT SOHD FROM CTHD
	INNER JOIN SANPHAM ON CTHD.MASP = SANPHAM.MASP
WHERE (CTHD.MASP = 'BB01') AND SL BETWEEN 10 AND 20
UNION 
SELECT DISTINCT SOHD FROM CTHD
	INNER JOIN SANPHAM ON CTHD.MASP = SANPHAM.MASP
WHERE (CTHD.MASP = 'BB02') AND SL BETWEEN 10 AND 20

--CAU III.14
SELECT SANPHAM.MASP, TENSP FROM SANPHAM
	INNER JOIN CTHD ON CTHD.MASP = SANPHAM.MASP
	INNER JOIN HOADON ON HOADON.SOHD = CTHD.SOHD
WHERE NUOCSX = 'Trung Quoc' OR NGHD = '2007-01-01'

--CAU III.15
SELECT MASP, TENSP FROM SANPHAM
EXCEPT
SELECT SANPHAM.MASP, TENSP FROM SANPHAM
	INNER JOIN CTHD ON CTHD.MASP = SANPHAM.MASP

--CAU III.16
SELECT MASP, TENSP FROM SANPHAM
EXCEPT
SELECT SANPHAM.MASP, TENSP FROM SANPHAM
	INNER JOIN CTHD ON CTHD.MASP = SANPHAM.MASP
	INNER JOIN HOADON ON HOADON.SOHD = CTHD.SOHD
WHERE YEAR(NGHD) = 2006

--CAU III.17
SELECT MASP, TENSP FROM SANPHAM
WHERE NUOCSX = 'Trung Quoc'
EXCEPT
SELECT SANPHAM.MASP, TENSP FROM SANPHAM
	INNER JOIN CTHD ON CTHD.MASP = SANPHAM.MASP
	INNER JOIN HOADON ON HOADON.SOHD = CTHD.SOHD
WHERE YEAR(NGHD) = 2006

--CAU III.18
SELECT SOHD FROM HOADON
WHERE NOT EXISTS (SELECT * FROM SANPHAM 
				  WHERE NUOCSX = 'Singapore' AND NOT EXISTS (SELECT * FROM CTHD 
															 WHERE CTHD.SOHD = HOADON.SOHD AND CTHD.MASP = SANPHAM.MASP))

--CAU III.19
SELECT HOADON.SOHD  FROM HOADON
WHERE YEAR(NGHD) = 2006 AND NOT EXISTS(SELECT * FROM SANPHAM 
									   WHERE NUOCSX = 'Singapore' AND NOT EXISTS(SELECT * FROM CTHD 
																				 WHERE CTHD.SOHD = HOADON.SOHD AND CTHD.MASP = SANPHAM.MASP))

--CAU III.20
SELECT COUNT(SOHD) AS SLHD 
FROM HOADON
WHERE (HOADON.MAKH IS NULL) 

--CAU III.21 
SELECT COUNT(DISTINCT CTHD.MASP) AS SLSP 
FROM SANPHAM
	INNER JOIN CTHD ON CTHD.MASP = SANPHAM.MASP
	INNER JOIN HOADON ON HOADON.SOHD = CTHD.SOHD
WHERE YEAR(NGHD) = 2006

--CAU III.22
SELECT max(TRIGIA) AS TRIGIACAONHAT, min(TRIGIA) AS TRIGIATHAPNHAT 
FROM HOADON

--CAU III.23
SELECT avg(TRIGIA) AS TRIGIATRUNGBINH 
FROM HOADON 
WHERE YEAR(NGHD) = 2006 

--CAU III.24
SELECT sum(TRIGIA) AS DOANHTHU 
FROM HOADON
WHERE YEAR(NGHD) = 2006

--CAU III.25
SELECT SOHD 
FROM HOADON
WHERE YEAR(NGHD) = 2006 AND TRIGIA IN (SELECT max(TRIGIA) 
									   FROM HOADON)

--CAU III.26
SELECT HOTEN 
FROM KHACHHANG
	INNER JOIN HOADON ON HOADON.MAKH = KHACHHANG.MAKH
WHERE YEAR(NGHD) = 2006 AND TRIGIA IN (SELECT max(TRIGIA) 
									   FROM HOADON)

--CAU III.27
SELECT TOP 3 MAKH, HOTEN 
FROM KHACHHANG
ORDER BY DOANHSO DESC

--CAU III.28
SELECT MASP, TENSP 
FROM SANPHAM
WHERE GIA IN (SELECT DISTINCT TOP 3 GIA 
			  FROM SANPHAM
			  ORDER BY GIA DESC)

--CAU III.29
SELECT MASP, TENSP 
FROM SANPHAM
WHERE NUOCSX = 'Thai Lan' AND GIA IN (SELECT DISTINCT TOP 3 GIA 
									  FROM SANPHAM
									  ORDER BY GIA DESC)

--CAU III.30
SELECT MASP, TENSP 
FROM SANPHAM 
WHERE NUOCSX = 'Trung Quoc' AND GIA IN (SELECT DISTINCT TOP 3 GIA 
										FROM SANPHAM
										WHERE NUOCSX = 'Trung Quoc'
										ORDER BY GIA DESC)

--CAU III.31
SELECT * 
FROM KHACHHANG 
WHERE DOANHSO IN (SELECT DISTINCT TOP 3 DOANHSO 
				  FROM KHACHHANG
				  ORDER BY DOANHSO DESC)

--CAU III.32
SELECT count(MASP) AS TONGSANPHAM 
FROM SANPHAM
WHERE NUOCSX = 'Trung Quoc'

--CAU III.33
SELECT count(MASP) AS TONGSANPHAM 
FROM SANPHAM
GROUP BY NUOCSX

--CAU III.34
SELECT max(GIA) AS GIABANCAONHAT, min(GIA) AS GIABANTHAPNHAT, avg(GIA) AS GIABANTRUNGBINH 
FROM SANPHAM
GROUP BY NUOCSX

--CAU III.35
SELECT sum(TRIGIA) AS DOANHTHU, day(NGHD) 
FROM HOADON
GROUP BY day(NGHD)

--CAU III.36
SELECT sum(SL) AS TONGSLSANPHAM 
FROM CTHD
	INNER JOIN HOADON ON HOADON.SOHD = CTHD.SOHD
WHERE MONTH(NGHD) = 10 AND YEAR(NGHD) = 2006
GROUP BY MASP

--CAU III.37
SELECT sum(TRIGIA) AS DOANHTHU, MONTH(NGHD) 
FROM HOADON
WHERE YEAR(NGHD) = 2006
GROUP BY MONTH(NGHD)

--CAU III.38
SELECT CTHD.SOHD, count(DISTINCT MASP) 
FROM HOADON 
	INNER JOIN CTHD ON CTHD.SOHD = HOADON.SOHD
GROUP BY CTHD.SOHD
HAVING count(DISTINCT MASP) >= 4

--CAU III.39
SELECT CTHD.SOHD, COUNT(DISTINCT CTHD.MASP) AS SLSANPHAM 
FROM HOADON
	INNER JOIN CTHD ON CTHD.SOHD = HOADON.SOHD
	INNER JOIN SANPHAM ON SANPHAM.MASP = CTHD.MASP
WHERE NUOCSX = 'Viet Nam' 
GROUP BY CTHD.SOHD
HAVING COUNT(DISTINCT CTHD.MASP) >= 3

--CAU III.40
SELECT KHACHHANG.MAKH, HOTEN, COUNT(HOADON.MAKH) AS SOLANMUAHANG
FROM KHACHHANG
INNER JOIN HOADON 
ON HOADON.MAKH = KHACHHANG.MAKH
GROUP BY KHACHHANG.MAKH, HOTEN
HAVING COUNT(HOADON.MAKH) = (SELECT TOP 1 COUNT(MAKH) 
							 FROM HOADON
							 GROUP BY MAKH
							 ORDER BY COUNT(MAKH) DESC)

--CAU III.41
SELECT MONTH(NGHD) AS THANG, SUM(TRIGIA) AS DOANHSO
FROM HOADON
WHERE YEAR(NGHD) = 2006 
GROUP BY MONTH(NGHD)
HAVING SUM(TRIGIA) IN (SELECT TOP 1 SUM(TRIGIA) 
				  FROM HOADON
				  GROUP BY MONTH(NGHD)
				  ORDER BY SUM(TRIGIA) DESC)
ORDER BY SUM(TRIGIA) DESC

--CAU III.42
SELECT SANPHAM.MASP, TENSP, SUM(SL) AS TONGSL 
FROM SANPHAM
INNER JOIN CTHD ON CTHD.MASP = SANPHAM.MASP
INNER JOIN HOADON ON HOADON.SOHD = CTHD.SOHD
WHERE YEAR(NGHD) = 2006
GROUP BY SANPHAM.MASP, TENSP
HAVING SUM(SL) IN (SELECT TOP 1 SUM(SL) 
				   FROM CTHD
				   GROUP BY MASP
				   ORDER BY SUM(SL) ASC)

--CAU III.43
SELECT NUOCSX, MASP, TENSP, MAX(GIA) AS GIABANCAONHAT 
FROM SANPHAM SP1
WHERE GIA in
(
    SELECT MAX(SP.GIA)
    FROM SANPHAM SP
    WHERE SP1.NUOCSX = SP.NUOCSX
)
GROUP BY NUOCSX, MASP, TENSP

--CAU III.44
SELECT NUOCSX, count(MASP) AS SP 
FROM SANPHAM
GROUP BY NUOCSX
HAVING count(MASP) >= 3

--CAU III.45
SELECT * 
FROM KHACHHANG
WHERE MAKH = (SELECT TOP 1 A.MAKH 
			  FROM (SELECT TOP 10 MAKH 
					FROM KHACHHANG
					ORDER BY DOANHSO DESC) AS A 
			  LEFT JOIN 
					(SELECT MAKH, COUNT(SOHD) AS SL
					 FROM HOADON
					 GROUP BY MAKH) AS B ON A.MAKH = B.MAKH
			  ORDER BY SL DESC)

