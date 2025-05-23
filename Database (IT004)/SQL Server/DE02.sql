﻿USE master
GO
DROP DATABASE DE02
GO
CREATE DATABASE DE02
GO
USE DE02
GO

--CAU 1:
CREATE TABLE NHANVIEN
(	
	MaNV char(5) NOT NULL,
	HoTen varchar(20),
	NgayVL smalldatetime,
	HSLuong numeric(4,2),
	MaPhong char(5)
	CONSTRAINT PK_NHANVIEN PRIMARY KEY (MaNV),
);

CREATE TABLE PHONGBAN
(
	MaPhong char(5) NOT NULL,
	TenPhong varchar(25),
	TruongPhong char(5),
	CONSTRAINT PK_PHONGBAN PRIMARY KEY (MaPhong),
	CONSTRAINT FK_TRGPHONG FOREIGN KEY (TruongPhong) REFERENCES NHANVIEN(MaNV)
);

CREATE TABLE XE
(
	MaXe char(5) NOT NULL,
	LoaiXe varchar(20),
	SoChoNgoi int,
	NamSX int,
	CONSTRAINT PK_XE PRIMARY KEY (MaXe)
);

CREATE TABLE PHANCONG
(
	MaPC char(5) NOT NULL,
	MaNV char(5),
	MaXe char(5),
	NgayDi smalldatetime,
	NgayVe smalldatetime,
	NoiDen varchar(25),
	CONSTRAINT PK_PHANCONG PRIMARY KEY (MaPC),
	CONSTRAINT FK_PHANCONG_NHANVIEN FOREIGN KEY (MaNV) REFERENCES NHANVIEN(MaNV),
	CONSTRAINT FK_PHANCONG_XE FOREIGN KEY (MaXe) REFERENCES XE(MaXe)
);

ALTER TABLE NHANVIEN
ADD CONSTRAINT FK_NHANVIEN_PHONGBAN FOREIGN KEY (MaPhong) REFERENCES PHONGBAN(MaPhong)

--CAU 2:
----CAU 2.1:
GO
ALTER TABLE XE
ADD CONSTRAINT CK_NAMSX CHECK (YEAR(NamSX) >= 2006 AND LoaiXe = 'Toyota')

----CAU 2.2:
GO
CREATE TRIGGER trg_ins_upd_phancong ON PHANCONG
FOR INSERT, UPDATE
AS
BEGIN
	DECLARE @MAXE char(5),
			@MANV char(5),
			@LOAIXE varchar(20),
			@MAPHONG char(5),
			@TENPHONG varchar(25)

	SELECT @MANV = MaNV, @MAXE = MaXe
	FROM inserted

	SELECT @MAPHONG = MaPhong
	FROM NHANVIEN
	WHERE MaNV = @MANV

	SELECT @TENPHONG = TenPhong
	FROM PHONGBAN 
	WHERE MaPhong = @MAPHONG

	SELECT @LOAIXE = LoaiXe
	FROM XE
	WHERE MaXe = @MAXE

	IF(@TENPHONG = N'Ngoại thành' AND @LOAIXE != 'Toyota')
	BEGIN
		ROLLBACK TRAN
		PRINT 'NHAN VIEN THUOC PHONG LAI XE NGOAI THANH CHI DUOC PHAN CONG LAI LOAI XE TOYOTA'
	END 
	ELSE
		PRINT 'THEM / CAP NHAT THANH CONG'
END

--CAU 3:
----CAU 3.1:
SELECT NHANVIEN.MaNV, HoTen
FROM NHANVIEN
INNER JOIN PHONGBAN ON PHONGBAN.MaPhong = NHANVIEN.MaPhong
INNER JOIN PHANCONG ON PHANCONG.MaNV = NHANVIEN.MaNV
INNER JOIN XE ON XE.MaXe = PHANCONG.MaXe
WHERE TenPhong = N'Nội thành' AND LoaiXe = 'Toyota' AND SoChoNgoi = 4

----CAU 3.2:
SELECT A.MaNV, HoTen
FROM NHANVIEN A
INNER JOIN PHONGBAN ON PHONGBAN.TruongPhong = A.MaNV
WHERE NOT EXISTS (SELECT * 
				  FROM XE B
				  WHERE NOT EXISTS (SELECT *
									FROM PHANCONG C
									WHERE C.MaNV = A.MaNV AND C.MaXe = B.MaXe))

----CAU 3.3:
SELECT TenPhong, NV.MaNV, HoTen
FROM NHANVIEN NV
INNER JOIN PHONGBAN PB ON PB.MaPhong = NV.MaPhong
INNER JOIN PHANCONG PC ON PC.MaNV = NV.MaNV
INNER JOIN XE X ON X.MaXe = PC.MaXe
GROUP BY PB.TenPhong, NV.MaNV, NV.HoTen
HAVING COUNT(X.LoaiXe) <= ALL(SELECT COUNT(X1.LoaiXe)
							  FROM XE X1
							  INNER JOIN PHANCONG PC1 ON PC1.MaXe = X1.MaXe
							  INNER JOIN NHANVIEN NV1 ON NV1.MaNV = PC1.MaNV
							  INNER JOIN PHONGBAN PB1 ON PB1.MaPhong = NV1.MaPhong
							  WHERE PB1.TenPhong = PB.TenPhong
							  GROUP BY PB1.TenPhong, NV1.MaNV)

