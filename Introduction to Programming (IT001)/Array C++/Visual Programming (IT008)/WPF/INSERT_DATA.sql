USE QLNS
GO

--TRIGGER THANH TIEN
GO 
CREATE OR ALTER TRIGGER TRG_THEMCTSP ON CTSP
FOR INSERT
AS 
BEGIN
	DECLARE @IDNH int,
			@GIATRINHAP money
	SELECT @IDNH = idNH, @GIATRINHAP = SoLuongNhap * DonGiaNhap
	FROM inserted

	UPDATE NHAPHANG
	SET ThanhTien += @GIATRINHAP
	WHERE idNH = @IDNH
END
GO

---CHUCNANG---
insert into CHUCNANG(TenCN, MoTa) values (N'Quản lý nhân viên', N'')
insert into CHUCNANG(TenCN, MoTa) values (N'Phân quyền', N'')
insert into CHUCNANG(TenCN, MoTa) values (N'Quản lý loại khách hàng', N'')
insert into CHUCNANG(TenCN, MoTa) values (N'Quản lý khách hàng', N'')
insert into CHUCNANG(TenCN, MoTa) values (N'Quản lý danh mục sản phẩm', N'')
insert into CHUCNANG(TenCN, MoTa) values (N'Quản lý sản phẩm', N'')
insert into CHUCNANG(TenCN, MoTa) values (N'Quản lý nhập hàng', N'')
insert into CHUCNANG(TenCN, MoTa) values (N'Quản lý chương trình khuyến mãi', N'')
insert into CHUCNANG(TenCN, MoTa) values (N'Quản lý hóa đơn', N'')
insert into CHUCNANG(TenCN, MoTa) values (N'Báo cáo thống kê', N'')

---LOAINGUOIDUNG---
insert into LOAINGUOIDUNG(TenLND, MoTa) values (N'Admin', N'')
insert into LOAINGUOIDUNG(TenLND, MoTa) values (N'Thu ngân', N'')
insert into LOAINGUOIDUNG(TenLND, MoTa) values (N'Nhân viên kho', N'')

---PHANQUYEN---
insert into PHANQUYEN(idLND, idCN) values (1, 1)
insert into PHANQUYEN(idLND, idCN) values (1, 2)
insert into PHANQUYEN(idLND, idCN) values (1, 3)
insert into PHANQUYEN(idLND, idCN) values (1, 5)
insert into PHANQUYEN(idLND, idCN) values (1, 6)
insert into PHANQUYEN(idLND, idCN) values (1, 8)
insert into PHANQUYEN(idLND, idCN) values (1, 10)

insert into PHANQUYEN(idLND, idCN) values (2, 3)
insert into PHANQUYEN(idLND, idCN) values (2, 4)
insert into PHANQUYEN(idLND, idCN) values (2, 6)
insert into PHANQUYEN(idLND, idCN) values (2, 9)

insert into PHANQUYEN(idLND, idCN) values (3, 5)
insert into PHANQUYEN(idLND, idCN) values (3, 6)
insert into PHANQUYEN(idLND, idCN) values (3, 7)

---LOAIKHACHHANG---
SET IDENTITY_INSERT LOAIKHACHHANG ON
insert into LOAIKHACHHANG(idLKH, TenLKH, MoTa, DiemTichLuyToiThieu) values (0, N'Tất cả', N'', 0)
SET IDENTITY_INSERT LOAIKHACHHANG OFF
insert into LOAIKHACHHANG(TenLKH, MoTa, DiemTichLuyToiThieu) values (N'Khách lẻ', N'', 0)
insert into LOAIKHACHHANG(TenLKH, MoTa, DiemTichLuyToiThieu) values (N'Hội viên', N'', 50)
insert into LOAIKHACHHANG(TenLKH, MoTa, DiemTichLuyToiThieu) values (N'Hội viên VIP', N'', 200)

---PTTHANHTOAN---
insert into PTTHANHTOAN (TenPT, MoTa) values (N'Tiền mặt', N'')
insert into PTTHANHTOAN (TenPT, MoTa) values (N'MoMo', N'')
insert into PTTHANHTOAN (TenPT, MoTa) values (N'Ngân hàng', N'')
insert into PTTHANHTOAN (TenPT, MoTa) values (N'ZaloPay', N'')

---DANHMUC---
insert into DANHMUC (TenDM, MoTa) values (N'Sách trong nước', N'')
insert into DANHMUC (TenDM, MoTa) values (N'Văn phòng phẩm', N'')
insert into DANHMUC (TenDM, MoTa) values (N'Đồ chơi', N'')
insert into DANHMUC (TenDM, MoTa) values (N'Dụng cụ học tập', N'')
insert into DANHMUC (TenDM, MoTa) values (N'Bách hóa lưu niệm', N'')
insert into DANHMUC (TenDM, MoTa) values (N'Sách ngoại văn', N'')
insert into DANHMUC (TenDM, MoTa) values (N'Sách giáo khoa', N'')
insert into DANHMUC (TenDM, MoTa) values (N'Giáo trình', N'')

--NHANVIEN---
insert into NHANVIEN (TenNV, NgaySinh, GioiTinh, DiaChi, SDT, NgayVL, ChucVu, TinhTrang, GhiChu) values (N'Bùi Thái Hoàng', '07/26/2004', N'Nam', 'Ktx khu B', '3016033867', '08/26/2023', 'Recruiting Manager', 1, '');
insert into NHANVIEN (TenNV, NgaySinh, GioiTinh, DiaChi, SDT, NgayVL, ChucVu, TinhTrang, GhiChu) values (N'Phạm Hoàng Duy', '07/26/2004', N'Nam', 'Ktx khu B', '3016033867', '08/26/2023', 'Recruiting Manager', 1, '');
insert into NHANVIEN (TenNV, NgaySinh, GioiTinh, DiaChi, SDT, NgayVL, ChucVu, TinhTrang, GhiChu) values (N'Cao Văn Hoàng', '07/26/2004', N'Nam', 'Ktx khu B', '3016033867', '08/26/2023', 'Recruiting Manager', 1, '');
insert into NHANVIEN (TenNV, NgaySinh, GioiTinh, DiaChi, SDT, NgayVL, ChucVu, TinhTrang, GhiChu) values (N'Nguyễn Huỳnh Duy Hiếu', '07/26/2004', N'Nam', 'Ktx khu B', '3016033867', '08/26/2023', 'Recruiting Manager', 1, '');
insert into NHANVIEN (TenNV, NgaySinh, GioiTinh, DiaChi, SDT, NgayVL, ChucVu, TinhTrang, GhiChu) values (N'Bùi Trọng Hoàng Huy', '07/26/2004', N'Nam', 'Ktx khu B', '3016033867', '08/26/2023', 'Recruiting Manager', 1, '');
insert into NHANVIEN (TenNV, NgaySinh, GioiTinh, DiaChi, SDT, NgayVL, ChucVu, TinhTrang, GhiChu) values (N'Phan Châu Hoàng', '07/26/2004', N'Nam', 'Ktx khu B', '3016033867', '08/26/2023', 'Recruiting Manager', 1, '');
insert into NHANVIEN (TenNV, NgaySinh, GioiTinh, DiaChi, SDT, NgayVL, ChucVu, TinhTrang, GhiChu) values (N'Mai Hoàng Hưng', '07/26/2004', N'Nam', 'Ktx khu B', '3016033867', '08/26/2023', 'Recruiting Manager', 1, '');
insert into NHANVIEN (TenNV, NgaySinh, GioiTinh, DiaChi, SDT, NgayVL, ChucVu, TinhTrang, GhiChu) values (N'Tô Hoàng Huy', '07/26/2004', N'Nam', 'Ktx khu B', '3016033867', '08/26/2023', 'Recruiting Manager', 1, '');
insert into NHANVIEN (TenNV, NgaySinh, GioiTinh, DiaChi, SDT, NgayVL, ChucVu, TinhTrang, GhiChu) values (N'Đỗ Nguyễn Hoàng Huy', '07/26/2004', N'Nam', 'Ktx khu B', '3016033867', '08/26/2023', 'Recruiting Manager', 1, '');
insert into NHANVIEN (TenNV, NgaySinh, GioiTinh, DiaChi, SDT, NgayVL, ChucVu, TinhTrang, GhiChu) values (N'Phan Trần Tiến Hưng', '07/26/2004', N'Nam', 'Ktx khu B', '3016033867', '08/26/2023', 'Recruiting Manager', 1, '');
insert into NHANVIEN (TenNV, NgaySinh, GioiTinh, DiaChi, SDT, NgayVL, ChucVu, TinhTrang, GhiChu) values (N'Lê Huy Hoàng', '07/26/2004', N'Nam', 'Ktx khu B', '3016033867', '08/26/2023', 'Recruiting Manager', 1, '');

--NGUOI DUNG
INSERT INTO NGUOIDUNG (TenDN, MatKhau, NgayTao, TinhTrang, idNV, idLND) VALUES ('quanly', '123456', '2023-10-02', 1, 1, 1);
INSERT INTO NGUOIDUNG (TenDN, MatKhau, NgayTao, TinhTrang, idNV, idLND) VALUES ('thungan', '123456', '2023-10-02', 1, 1, 2);
INSERT INTO NGUOIDUNG (TenDN, MatKhau, NgayTao, TinhTrang, idNV, idLND) VALUES ('kho', '123456', '2023-10-02', 1, 1, 3);
INSERT INTO NGUOIDUNG (TenDN, MatKhau, NgayTao, TinhTrang, idNV, idLND) VALUES ('quanly2', '12345678', '2024-01-02', 1, 2, 1);
INSERT INTO NGUOIDUNG (TenDN, MatKhau, NgayTao, TinhTrang, idNV, idLND) VALUES ('thungan2', '12345678', '2024-01-02', 1, 3, 2);
INSERT INTO NGUOIDUNG (TenDN, MatKhau, NgayTao, TinhTrang, idNV, idLND) VALUES ('kho2', '12345678', '2024-01-02', 1, 4, 3);
INSERT INTO NGUOIDUNG (TenDN, MatKhau, NgayTao, TinhTrang, idNV, idLND) VALUES ('quanly3', '12345678', '2024-01-02', 1, 5, 1);
INSERT INTO NGUOIDUNG (TenDN, MatKhau, NgayTao, TinhTrang, idNV, idLND) VALUES ('thungan3', '12345678', '2024-01-02', 1, 6, 2);
INSERT INTO NGUOIDUNG (TenDN, MatKhau, NgayTao, TinhTrang, idNV, idLND) VALUES ('kho3', '12345678', '2024-01-02', 1, 7, 3);
INSERT INTO NGUOIDUNG (TenDN, MatKhau, NgayTao, TinhTrang, idNV, idLND) VALUES ('thungan4', '12345678', '2024-01-02', 1, 8, 2);
INSERT INTO NGUOIDUNG (TenDN, MatKhau, NgayTao, TinhTrang, idNV, idLND) VALUES ('thungan5', '12345678', '2024-01-02', 1, 9, 2);
INSERT INTO NGUOIDUNG (TenDN, MatKhau, NgayTao, TinhTrang, idNV, idLND) VALUES ('thungan6', '12345678', '2024-01-02', 1, 10, 2);

--KHACH HANG
INSERT INTO KHACHHANG (TenKH, GioiTinh, NgaySinh, DiaChi, SDT, NgayTG, DiemTichLuy, idLKH)
VALUES 
  (N'Nguyễn Thị Hương', N'Nữ', '12/07/2001', '9942 Killdeer Way', '8534387129', '07/25/2022', 89, 2),
  (N'Nguyễn Văn Tuấn', N'Nam', '03/14/2006', '09748 Dottie Street', '5773362943', '12/09/2020', 29, 2),
  (N'Trần Thị Lan', N'Nữ', '10/20/1993', '19 Warbler Street', '1257019734', '02/23/2023', 205, 2),
  (N'Nguyễn Thị Trang', N'Nữ', '11/26/1988', '4003 Division Pass', '1583828629', '07/17/2021', 161, 2),
  (N'Phạm Văn Hùng', N'Nữ', null, '41 Erie Way', '5968727637', '05/15/2022', 230, 2),
  (N'Trần Văn Hòa', N'Nam', '02/05/1996', null, '3148518186', '03/09/2021', 66, 2),
  (N'Lê Thị Bích Ngọc', N'Nữ', '11/09/1959', '8 4th Alley', '8463502860', '12/28/2021', 147, 2),
  (N'Nguyễn Thị Mai', N'Nữ', '12/02/1957', '1221 Tony Place', '6488090445', '11/19/2021', 202, 2),
  (N'Hoàng Văn Nam', N'Nam', '10/21/1975', '938 Lerdahl Way', '2103853200', '08/09/2021', 15, 2),
  (N'Nguyễn Văn Đức', N'Nam', '10/28/1973', '0 Heath Junction', '8394362594', '05/13/2023', 49, 2),
  (N'Võ Thị Thanh', N'Nam', '09/07/2001', '961 Mayfield Avenue', '9311849601', '06/04/2023', 29, 2),
  (N'Phan Văn Hoàng', N'Nam', '10/15/2011', '090 Barby Road', '2656155620', '06/07/2021', 30, 2),
  (N'Nguyễn Thị Hồng', N'Nữ', '06/21/2005', '0092 Menomonie Way', '5478911698', '12/13/2022', 75, 2),
  (N'Nguyễn Thị Thu', N'Nữ', '09/12/1997', '7745 Scoville Way', '7796843781', '10/04/2021', 45, 2),
  (N'Lê Văn Minh', N'Nam', '01/05/1981', '494 Basil Circle', '6861387610', '12/02/2022', 123, 2),
  (N'Trần Thị Diệu', N'Nữ', '11/20/1985', '977 Forster Drive', '3048069812', '04/09/2023', 195, 2),
  (N'Nguyễn Văn Hòa', N'Nam', '10/20/1971', '7320 Bowman Parkway', '6915915567', '12/02/2020', 174, 2),
  (N'Nguyễn Thị Hương', N'Nam', '04/05/1956', '03683 Doe Crossing Place', '4419738973', '11/11/2021', 21, 2),
  (N'Lê Văn Đức', N'Nam', '03/05/1979', '4 Stone Corner Alley', '6157626832', '09/13/2022', 129, 2),
  (N'Nguyễn Thị Ngọc', N'Nữ', '05/28/1965', '6 Surrey Lane', '2472890400', '12/20/2020', 149, 2),
  (N'Nguyễn Thị Minh', N'Nam', '03/10/2003', '0304 Kim Plaza', '2536561324', '12/21/2021', 221, 2),
  (N'Nguyễn Thị Tâm', N'Nữ', null, '24 Karstens Park', '5909042537', '07/05/2022', 225, 2),
  (N'Trần Thị Ngọc', N'Nữ', '09/16/2008', '6 Toban Parkway', '7639813411', '07/27/2023', 138, 2),
  (N'Nguyễn Thị Lan', N'Nam', '04/15/1953', '293 High Crossing Lane', '5338353655', '02/06/2021', 153, 2),
  (N'Nguyễn Thị Bảo', N'Nam', '11/05/2016', '25 Buhler Plaza', '4869446388', '04/01/2023', 153, 2),
  (N'Nguyễn Văn Nam', N'Nữ', '07/23/2007', '34669 Packers Point', '6577318271', '05/06/2023', 992, 3),
  (N'Nguyễn Thị Hồng', N'Nữ', '01/07/2011', '16 Tony Parkway', '5047459610', '09/16/2023', 776, 3),
  (N'Nguyễn Thị Lan', N'Nữ', '06/07/2001', '92074 Lukken Junction', '5807103440', '12/02/2022', 289, 3),
  (N'Nguyễn Văn Hiệp', N'Nam', '04/22/1998', '027 4th Circle', '3894113988', '06/05/2021', 919, 3),
  (N'Nguyễn Thị Ngọc', N'Nữ', '09/28/1957', '749 Sunfield Place', '3496924261', '03/21/2021', 257, 3),
  (N'Nguyễn Văn Nam', N'Nam', '08/04/1994', '4 Westridge Court', '8374644007', '04/27/2022', 489, 3),
  (N'Nguyễn Văn Hòa', N'Nam', '09/01/1982', '90504 Holmberg Trail', '3427739220', '04/26/2023', 819, 3),
  (N'Nguyễn Văn Minh', N'Nam', '06/07/2018', '4598 Express Trail', '3899270383', '02/19/2021', 682, 3),
  (N'Nguyễn Văn Tâm', N'Nam', null, '69 Drewry Court', '5608526858', '11/22/2021', 525, 3),
  (N'Lê Văn Hiệp', N'Nam', '01/30/1976', '594 Hooker Junction', '7805396331', '01/26/2022', 708, 3),
  (N'Nguyễn Thị Phương', N'Nữ', '08/24/2023', '7 Utah Circle', '5518156254', '06/12/2021', 363, 3),
  (N'Nguyễn Văn Hiệp', N'Nam', '06/14/1962', '08 Moland Avenue', '2245095608', '12/02/2021', 944, 3),
  (N'Phạm Văn Hòa', N'Nam', '07/05/1951', '8 Emmet Crossing', '1115239110', '12/18/2020', 286, 3),
  (N'Nguyễn Thị Linh', N'Nữ', '06/11/1961', '44379 Golden Leaf Court', '5507704971', '12/13/2020', 641, 3),
  (N'Nguyễn Thị Minh', N'Male', '01/29/2002', '3758 Bunker Hill Court', '1356076215', '06/15/2023', 692, 3),
  (N'Nguyễn Thị Ngọc', N'Nữ', '02/01/1965', '77081 Homewood Road', '1403307386', '07/25/2022', 662, 3);

--KHUYEN MAI
INSERT INTO KHUYENMAI (TenKM, MoTa, idLKH, NgayBD, NgayKT, GiamGia, idND) VALUES (N'Mừng Ngày Nhà giáo Việt Nam', '', 0, '2022-11-15', '2022-11-25', 15, 1);
INSERT INTO KHUYENMAI (TenKM, MoTa, idLKH, NgayBD, NgayKT, GiamGia, idND) VALUES (N'Giáng Sinh Vui Vẻ', '', 0, '2022-12-23', '2022-12-26', 30, 1);
INSERT INTO KHUYENMAI (TenKM, MoTa, idLKH, NgayBD, NgayKT, GiamGia, idND) VALUES (N'Mừng Năm 2023', '', 0, '2022-12-28', '2023-01-02', 30, 1);
INSERT INTO KHUYENMAI (TenKM, MoTa, idLKH, NgayBD, NgayKT, GiamGia, idND) VALUES (N'Ngày Lễ Tình Nhân', '', 0, '2023-02-12', '2023-02-15', 15, 1);
INSERT INTO KHUYENMAI (TenKM, MoTa, idLKH, NgayBD, NgayKT, GiamGia, idND) VALUES (N'Mừng 30/04 - 01/05', '', 0, '2023-04-29', '2023-05-02', 25, 1);
INSERT INTO KHUYENMAI (TenKM, MoTa, idLKH, NgayBD, NgayKT, GiamGia, idND) VALUES (N'Mừng Quốc Tế Thiếu Nhi', '', 0, '2023-05-31', '2023-06-02', 15, 1);
INSERT INTO KHUYENMAI (TenKM, MoTa, idLKH, NgayBD, NgayKT, GiamGia, idND) VALUES (N'Mừng Quốc Khánh Việt Nam', '', 0, '2023-09-01', '2023-09-03', 40, 1);
INSERT INTO KHUYENMAI (TenKM, MoTa, idLKH, NgayBD, NgayKT, GiamGia, idND) VALUES (N'Mừng ngày Phụ Nữ Việt Nam', '', 0, '2023-10-19', '2023-10-21', 20, 1);
INSERT INTO KHUYENMAI (TenKM, MoTa, idLKH, NgayBD, NgayKT, GiamGia, idND) VALUES (N'Mừng Ngày Nhà giáo Việt Nam', '', 0, '2023-11-19', '2023-11-21', 15, 1);
INSERT INTO KHUYENMAI (TenKM, MoTa, idLKH, NgayBD, NgayKT, GiamGia, idND) VALUES (N'Mừng Giáng Sinh', '', 0, '2023-12-23', '2023-12-25', 30, 1);
INSERT INTO KHUYENMAI (TenKM, MoTa, idLKH, NgayBD, NgayKT, GiamGia, idND) VALUES (N'Mừng Năm Mới 2024', '', 0, '2023-12-30', '2024-01-02', 35, 1);

--SAN PHAM
-- Sách trong nước
INSERT INTO SANPHAM (TenSP, MoTa, idDM) VALUES
  (N'Tiếng Gọi Của Hoang Dã', N'Sách về thiên nhiên và môi trường', 1),
  (N'Dế Mèn Phiêu Lưu Ký', N'Truyện kể về cuộc phiêu lưu của Dế Mèn', 1),
  (N'Đất Rừng Na Uy', N'Tác phẩm văn học nổi tiếng của nhà văn Knut Hamsun', 1),
  (N'Nhà Giả Kim', N'Cuốn sách triết học nổi tiếng của Paulo Coelho', 1),
  (N'Chí Phèo', N'Truyện ngắn nổi tiếng của nhà văn Nam Cao', 1),
  (N'Hai Đứa Trẻ', N'Trinh thám của tác giả Higashino Keigo', 1),
  (N'Chúng Ta Là Một', N'Truyện tình cảm của tác giả Federico Moccia', 1),
  (N'The Alchemist', N'Novel by Paulo Coelho', 1),
  (N'The Little Prince', N'Novel by Antoine de Saint-Exupéry', 1),
  (N'One Hundred Years of Solitude', N'Novel by Gabriel García Márquez', 1);

-- Văn phòng phẩm
INSERT INTO SANPHAM (TenSP, MoTa, idDM) VALUES
  (N'Bút Bi Thiên Long', N'Bút bi chất lượng cao cho việc viết', 2),
  (N'Blocknote A5', N'Blocknote nhỏ gọn, tiện lợi', 2),
  (N'Máy Tính Casio FX-991ES Plus', N'Máy tính kỹ thuật số chính xác', 2),
  (N'Bút Chì Staedtler Mars Lumograph', N'Bút chì chất lượng cho học sinh và nghệ sĩ', 2),
  (N'USB Kingston 32GB', N'USB lưu trữ dữ liệu dung lượng cao', 2),
  (N'Giấy A4 Double A', N'Giấy in chất lượng cao', 2),
  (N'File Gia Công Chất Lượng Cao', N'File gia công chắc chắn', 2),
  (N'Máy In Laser Canon LBP6230dw', N'Máy in laser đen trắng', 2),
  (N'Gọng Kính Trẻ Trung', N'Gọng kính thời trang cho văn phòng', 2),
  (N'Túi Xách Da Cao Cấp', N'Túi xách da thời trang', 2);

-- Đồ chơi
INSERT INTO SANPHAM (TenSP, MoTa, idDM) VALUES
  (N'Xe Điều Khiển Từ Xa', N'Xe đồ chơi có thể điều khiển từ xa', 3),
  (N'Búp Bê Barbie', N'Búp bê Barbie xinh xắn cho bé gái', 3),
  (N'Xe Đạp Trẻ Em', N'Xe đạp dành cho trẻ em', 3),
  (N'Lego Duplo', N'Bộ xây dựng Lego cho trẻ em', 3),
  (N'Đồ Chơi Gắn Kết Hợp Học Tập', N'Đồ chơi giáo dục cho bé', 3),
  (N'Mô Hình Robot', N'Mô hình robot điều khiển bằng điện thoại', 3),
  (N'Gấu Bông Teddy', N'Gấu bông mềm mại cho bé', 3),
  (N'Xe Ô Tô Điện Điều Khiển', N'Xe ô tô mini điều khiển từ xa', 3),
  (N'Đồ Chơi Trí Tuệ Cho Trẻ Em', N'Đồ chơi giúp phát triển trí tuệ cho bé', 3),
  (N'Đồ Chơi Vận Động Cho Trẻ Em', N'Đồ chơi giúp trẻ phát triển vận động', 3);

-- Dụng cụ học tập
INSERT INTO SANPHAM (TenSP, MoTa, idDM) VALUES
  (N'Bút Mực Waterman', N'Bút mực cao cấp cho việc viết và vẽ', 4),
  (N'Kéo Màu Faber-Castell', N'Kéo màu chất lượng cho học sinh và nghệ sĩ', 4),
  (N'Máy Tính Casio FX-570ES Plus', N'Máy tính kỹ thuật số chính xác', 4),
  (N'Vật Dụng Học Tập Cho Sinh Viên', N'Bộ vật dụng học tập cần thiết cho sinh viên', 4),
  (N'Đèn Học Bàn Đứng', N'Đèn học LED có thể điều chỉnh độ sáng', 4),
  (N'Phấn Màu Staedtler Noris Club', N'Phấn màu chất lượng cho học sinh', 4),
  (N'Gia Công Văn Bản', N'Dịch vụ gia công văn bản chất lượng', 4),
  (N'Túi Đựng Laptop', N'Túi đựng laptop chống sốc', 4),
  (N'Máy Tính Casio FX-85ES Plus', N'Máy tính kỹ thuật số chính xác', 4),
  (N'Vật Dụng Học Tập', N'Bộ vật dụng học tập cần thiết cho học sinh', 4);

-- Bách hóa lưu niệm
INSERT INTO SANPHAM (TenSP, MoTa, idDM) VALUES
  (N'Móc Khóa Hình Chú Voi', N'Móc khóa lưu niệm độc đáo', 5),
  (N'Ấn Độ Huyền Bí', N'Du lịch ảo đến những địa điểm nổi tiếng ở Ấn Độ', 5),
  (N'Chibi Nhật Bản', N'Mô hình chibi về văn hóa Nhật Bản', 5),
  (N'Bức Tranh Cổ Điển', N'Bức tranh nghệ thuật cổ điển đẹp mắt', 5),
  (N'Đèn Trang Trí Phòng', N'Đèn trang trí phòng ngủ tạo không gian ấm cúng', 5),
  (N'Quạt Trang Trí', N'Quạt trang trí vintage cho phòng khách', 5),
  (N'Gối Trang Trí', N'Gối trang trí phòng khách và phòng ngủ', 5),
  (N'Tượng Phật Di Lặc', N'Tượng phật Di Lặc mang lại sự may mắn', 5),
  (N'Chai Nước Lưu Niệm', N'Chai nước lưu niệm với hình ảnh độc đáo', 5),
  (N'Bức Tranh Trừu Tượng', N'Bức tranh trừu tượng tạo điểm nhấn cho phòng khách', 5);

-- Sách ngoại văn
INSERT INTO SANPHAM (TenSP, MoTa, idDM) VALUES
  (N'The Great Gatsby', N'Novel by F. Scott Fitzgerald', 6),
  (N'Pride and Prejudice', N'Novel by Jane Austen', 6),
  (N'To Kill a Mockingbird', N'Novel by Harper Lee', 6),
  (N'1984', N'Novel by George Orwell', 6),
  (N'Brave New World', N'Novel by Aldous Huxley', 6),
  (N'The Catcher in the Rye', N'Novel by J.D. Salinger', 6),
  (N'One Hundred Years of Solitude', N'Novel by Gabriel García Márquez', 6),
  (N'Moby-Dick', N'Novel by Herman Melville', 6),
  (N'The Odyssey', N'Epic poem attributed to Homer', 6),
  (N'The Iliad', N'Epic poem attributed to Homer', 6);

-- Sách giáo khoa
INSERT INTO SANPHAM (TenSP, MoTa, idDM) VALUES
  (N'Sách Giáo Khoa Toán 12', N'Sách giáo khoa dành cho học sinh lớp 12 môn Toán', 7),
  (N'Sách Giáo Khoa Văn 10', N'Sách giáo khoa dành cho học sinh lớp 10 môn Văn', 7),
  (N'Sách Giáo Khoa Lịch Sử 8', N'Sách giáo khoa dành cho học sinh lớp 8 môn Lịch Sử', 7),
  (N'Sách Giáo Khoa Địa Lý 6', N'Sách giáo khoa dành cho học sinh lớp 6 môn Địa Lý', 7),
  (N'Sách Giáo Khoa Ngữ Văn 11', N'Sách giáo khoa dành cho học sinh lớp 11 môn Ngữ Văn', 7),
  (N'Sách Giáo Khoa Vật Lý 9', N'Sách giáo khoa dành cho học sinh lớp 9 môn Vật Lý', 7),
  (N'Sách Giáo Khoa Hóa Học 7', N'Sách giáo khoa dành cho học sinh lớp 7 môn Hóa Học', 7),
  (N'Sách Giáo Khoa Sinh Học 10', N'Sách giáo khoa dành cho học sinh lớp 10 môn Sinh Học', 7),
  (N'Sách Giáo Khoa Ngoại Ngữ 8', N'Sách giáo khoa dành cho học sinh lớp 8 môn Ngoại Ngữ', 7),
  (N'Sách Giáo Khoa Công Nghệ 12', N'Sách giáo khoa dành cho học sinh lớp 12 môn Công Nghệ', 7);

-- Giáo trình
INSERT INTO SANPHAM (TenSP, MoTa, idDM) VALUES
  (N'Giáo Trình Lập Trình Python', N'Giáo trình hướng dẫn lập trình Python từ cơ bản đến nâng cao', 8),
  (N'Giáo Trình Kế Toán Tài Chính', N'Giáo trình hướng dẫn kế toán tài chính trong doanh nghiệp', 8),
  (N'Giáo Trình Marketing Online', N'Giáo trình về chiến lược và kỹ thuật marketing online', 8),
  (N'Giáo Trình Quản Trị Dự Án', N'Giáo trình hướng dẫn quản lý dự án hiệu quả', 8),
  (N'Giáo Trình Hệ Điều Hành', N'Giáo trình về hệ điều hành trong lập trình', 8),
  (N'Giáo Trình Nền Tảng Blockchain', N'Giáo trình về nền tảng công nghệ Blockchain', 8),
  (N'Giáo Trình Lập Trình Web', N'Giáo trình hướng dẫn lập trình web và phát triển ứng dụng', 8),
  (N'Giáo Trình Quản Lý Nhân Sự', N'Giáo trình về quản lý nhân sự trong tổ chức', 8),
  (N'Giáo Trình Thống Kê Kinh Tế', N'Giáo trình về thống kê trong lĩnh vực kinh tế', 8);

  --NHAP HANG
insert into NHAPHANG (NgayNhap, ThanhTien, GhiChu, idND) values ('11/1/2022', 0, null, 1);
insert into NHAPHANG (NgayNhap, ThanhTien, GhiChu, idND) values ('12/1/2022', 0, null, 1);
insert into NHAPHANG (NgayNhap, ThanhTien, GhiChu, idND) values ('1/1/2023', 0, null, 1);
insert into NHAPHANG (NgayNhap, ThanhTien, GhiChu, idND) values ('2/1/2023', 0, null, 1);
insert into NHAPHANG (NgayNhap, ThanhTien, GhiChu, idND) values ('3/1/2023', 0, null, 1);
insert into NHAPHANG (NgayNhap, ThanhTien, GhiChu, idND) values ('4/1/2023', 0, null, 1);
insert into NHAPHANG (NgayNhap, ThanhTien, GhiChu, idND) values ('5/1/2023', 0, null, 1);
insert into NHAPHANG (NgayNhap, ThanhTien, GhiChu, idND) values ('6/1/2023', 0, null, 1);
insert into NHAPHANG (NgayNhap, ThanhTien, GhiChu, idND) values ('7/1/2023', 0, null, 1);
insert into NHAPHANG (NgayNhap, ThanhTien, GhiChu, idND) values ('8/1/2023', 0, null, 1);
insert into NHAPHANG (NgayNhap, ThanhTien, GhiChu, idND) values ('9/1/2023', 0, null, 1);
insert into NHAPHANG (NgayNhap, ThanhTien, GhiChu, idND) values ('10/1/2023', 0, null, 1);
insert into NHAPHANG (NgayNhap, ThanhTien, GhiChu, idND) values ('11/1/2023', 0, null, 1);
insert into NHAPHANG (NgayNhap, ThanhTien, GhiChu, idND) values ('12/1/2023', 0, null, 1);


--CTSP

INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20000.00, 20, 0, 24000.00, 0, 20, NULL, 1, 1, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20000.00, 20, 0, 24000.00, 0, 20, NULL, 1, 2, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (21000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 3, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 20, 0, 30000.00, 0, 20, NULL, 1, 4, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 5, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22500.00, 20, 0, 25500.00, 0, 20, NULL, 1, 6, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (19500.00, 20, 0, 24000.00, 0, 20, NULL, 1, 7, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 8, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (17500.00, 20, 0, 23000.00, 0, 20, NULL, 1, 9, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20500.00, 20, 0, 24000.00, 0, 20, NULL, 1, 10, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (5000.00, 40, 0, 7000.00, 0, 40, NULL, 1, 11, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (7000.00, 20, 0, 10000.00, 0, 20, NULL, 1, 12, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (500000.00, 20, 0, 580000.00, 0, 20, NULL, 1, 13, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4000.00, 20, 0, 6500.00, 0, 20, NULL, 1, 14, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (200000.00, 20, 0, 260000.00, 0, 20, NULL, 1, 15, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (1000.00, 1000, 0, 2000.00, 0, 1000, NULL, 1, 16, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (50000.00, 20, 0, 54000.00, 0, 20, NULL, 1, 17, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4800000.00, 20, 0, 5000000.00, 0, 20, NULL, 1, 18, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (50000.00, 20, 0, 55000.00, 0, 20, NULL, 1, 19, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (6000000.00, 20, 0, 6200000.00, 0, 20, NULL, 1, 20, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (250000.00, 30, 0, 272000.00, 0, 30, NULL, 1, 21, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (140000.00, 30, 0, 161000.00, 0, 30, NULL, 1, 22, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (1200000.00, 15, 0, 1350000.00, 0, 15, NULL, 1, 23, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (145000.00, 30, 0, 158000.00, 0, 30, NULL, 1, 24, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (67000.00, 40, 0, 74000.00, 0, 40, NULL, 1, 25, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (750000.00, 25, 0, 783000.00, 0, 25, NULL, 1, 26, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 30, 0, 141000.00, 0, 30, NULL, 1, 27, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (600000.00, 30, 0, 617000.00, 0, 30, NULL, 1, 28, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 30, 0, 147000.00, 0, 30, NULL, 1, 29, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (100000.00, 30, 0, 121000.00, 0, 30, NULL, 1, 30, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (3500000.00, 30, 0, 3615000.00, 0, 30, NULL, 1, 31, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (80000.00, 30, 0, 91000.00, 0, 30, NULL, 1, 32, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (450000.00, 25, 0, 471000.00, 0, 25, NULL, 1, 33, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (100000.00, 35, 0, 113000.00, 0, 35, NULL, 1, 34, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (250000.00, 20, 0, 264000.00, 0, 20, NULL, 1, 35, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (30000.00, 30, 0, 38000.00, 0, 30, NULL, 1, 36, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (40000.00, 30, 0, 46000.00, 0, 30, NULL, 1, 37, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 25, 0, 107000.00, 0, 25, NULL, 1, 38, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (950000.00, 15, 0, 100000.00, 0, 15, NULL, 1, 39, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (54000.00, 30, 0, 61500.00, 0, 30, NULL, 1, 40, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (29000.00, 40, 0, 32000.00, 0, 40, NULL, 1, 41, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (43000.00, 25, 0, 45000.00, 0, 25, NULL, 1, 42, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (59000.00, 30, 0, 62000.00, 0, 30, NULL, 1, 43, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4800000.00, 10, 0, 4990000.00, 0, 10, NULL, 1, 44, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (174000.00, 20, 0, 180000.00, 0, 20, NULL, 1, 45, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (620000.00, 10, 0, 633000.00, 0, 10, NULL, 1, 46, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 10, 0, 138000.00, 0, 10, NULL, 1, 47, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 10, 0, 103000.00, 0, 10, NULL, 1, 48, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (33000.00, 10, 0, 40000.00, 0, 10, NULL, 1, 49, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (7400000.00, 10, 0, 7540000.00, 0, 10, NULL, 1, 50, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (52000.00, 20, 0, 56000.00, 0, 20, NULL, 1, 51, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (43000.00, 25, 0, 48000.00, 0, 25, NULL, 1, 52, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (48000.00, 25, 0, 52000.00, 0, 25, NULL, 1, 53, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (19840.00, 20, 0, 33000.00, 0, 20, NULL, 1, 54, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (29000.00, 30, 0, 34000.00, 0, 30, NULL, 1, 55, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (31000.00, 30, 0, 37000.00, 0, 30, NULL, 1, 56, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (38000.00, 20, 0, 43000.00, 0, 20, NULL, 1, 57, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (53000.00, 15, 0, 58000.00, 0, 15, NULL, 1, 58, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (48000.00, 20, 0, 52000.00, 0, 20, NULL, 1, 59, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (37000.00, 20, 0, 41000.00, 0, 20, NULL, 1, 60, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (23000.00, 40, 0, 28500.00, 0, 40, NULL, 1, 61, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 29000.00, 0, 40, NULL, 1, 62, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 63, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 64, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 65, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 66, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 28000.00, 0, 40, NULL, 1, 67, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 29000.00, 0, 40, NULL, 1, 68, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 28500.00, 0, 40, NULL, 1, 69, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27000.00, 0, 40, NULL, 1, 70, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (45000.00, 50, 0, 50000.00, 0, 50, NULL, 1, 71, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 30, 0, 133000.00, 0, 30, NULL, 1, 72, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (116000.00, 40, 0, 124000.00, 0, 40, NULL, 1, 73, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (140000.00, 40, 0, 155000.00, 0, 40, NULL, 1, 74, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 50, 0, 133000.00, 0, 50, NULL, 1, 75, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (160000.00, 50, 0, 175000.00, 0, 50, NULL, 1, 76, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 40, 0, 153000.00, 0, 40, NULL, 1, 77, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 30, 0, 109000.00, 0, 30, NULL, 1, 78, 1);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (132000.00, 40, 0, 148000.00, 0, 40, NULL, 1, 79, 1);

------

INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20000.00, 20, 0, 24000.00, 0, 20, NULL, 1, 1, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20000.00, 20, 0, 24000.00, 0, 20, NULL, 1, 2, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (21000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 3, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 20, 0, 30000.00, 0, 20, NULL, 1, 4, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 5, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22500.00, 40, 0, 25500.00, 0, 40, NULL, 1, 6, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (19500.00, 20, 0, 24000.00, 0, 20, NULL, 1, 7, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 8, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (17500.00, 60, 0, 23000.00, 0, 60, NULL, 1, 9, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20500.00, 20, 0, 24000.00, 0, 20, NULL, 1, 10, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (5000.00, 40, 0, 7000.00, 0, 40, NULL, 1, 11, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (7000.00, 20, 0, 10000.00, 0, 20, NULL, 1, 12, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (500000.00, 20, 0, 580000.00, 0, 20, NULL, 1, 13, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4000.00, 20, 0, 6500.00, 0, 20, NULL, 1, 14, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (200000.00, 20, 0, 260000.00, 0, 20, NULL, 1, 15, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (1000.00, 1000, 0, 2000.00, 0, 1000, NULL, 1, 16, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (50000.00, 100, 0, 54000.00, 0, 100, NULL, 1, 17, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4800000.00, 20, 0, 5000000.00, 0, 20, NULL, 1, 18, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (50000.00, 20, 0, 55000.00, 0, 20, NULL, 1, 19, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (6000000.00, 20, 0, 6200000.00, 0, 20, NULL, 1, 20, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (250000.00, 30, 0, 272000.00, 0, 30, NULL, 1, 21, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (140000.00, 30, 0, 161000.00, 0, 30, NULL, 1, 22, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (1200000.00, 15, 0, 1350000.00, 0, 15, NULL, 1, 23, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (145000.00, 30, 0, 158000.00, 0, 30, NULL, 1, 24, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (67000.00, 40, 0, 74000.00, 0, 40, NULL, 1, 25, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (750000.00, 25, 0, 783000.00, 0, 25, NULL, 1, 26, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 30, 0, 141000.00, 0, 30, NULL, 1, 27, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (600000.00, 30, 0, 617000.00, 0, 30, NULL, 1, 28, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 30, 0, 147000.00, 0, 30, NULL, 1, 29, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (100000.00, 30, 0, 121000.00, 0, 30, NULL, 1, 30, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (3500000.00, 30, 0, 3615000.00, 0, 30, NULL, 1, 31, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (80000.00, 30, 0, 91000.00, 0, 30, NULL, 1, 32, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (450000.00, 25, 0, 471000.00, 0, 25, NULL, 1, 33, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (100000.00, 45, 0, 113000.00, 0, 45, NULL, 1, 34, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (250000.00, 20, 0, 264000.00, 0, 20, NULL, 1, 35, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (30000.00, 30, 0, 38000.00, 0, 30, NULL, 1, 36, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (40000.00, 30, 0, 46000.00, 0, 30, NULL, 1, 37, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 25, 0, 107000.00, 0, 25, NULL, 1, 38, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (950000.00, 15, 0, 100000.00, 0, 15, NULL, 1, 39, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (54000.00, 30, 0, 61500.00, 0, 30, NULL, 1, 40, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (29000.00, 40, 0, 32000.00, 0, 40, NULL, 1, 41, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (43000.00, 25, 0, 45000.00, 0, 25, NULL, 1, 42, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (59000.00, 30, 0, 62000.00, 0, 30, NULL, 1, 43, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4800000.00, 10, 0, 4990000.00, 0, 10, NULL, 1, 44, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (174000.00, 40, 0, 180000.00, 0, 40, NULL, 1, 45, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (620000.00, 10, 0, 633000.00, 0, 10, NULL, 1, 46, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 10, 0, 138000.00, 0, 10, NULL, 1, 47, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 10, 0, 103000.00, 0, 10, NULL, 1, 48, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (33000.00, 10, 0, 40000.00, 0, 10, NULL, 1, 49, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (7400000.00, 10, 0, 7540000.00, 0, 10, NULL, 1, 50, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (52000.00, 20, 0, 56000.00, 0, 20, NULL, 1, 51, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (43000.00, 25, 0, 48000.00, 0, 25, NULL, 1, 52, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (48000.00, 25, 0, 52000.00, 0, 25, NULL, 1, 53, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (19840.00, 20, 0, 33000.00, 0, 20, NULL, 1, 54, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (29000.00, 30, 0, 34000.00, 0, 30, NULL, 1, 55, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (31000.00, 30, 0, 37000.00, 0, 30, NULL, 1, 56, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (38000.00, 20, 0, 43000.00, 0, 20, NULL, 1, 57, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (53000.00, 15, 0, 58000.00, 0, 15, NULL, 1, 58, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (48000.00, 20, 0, 52000.00, 0, 20, NULL, 1, 59, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (37000.00, 20, 0, 41000.00, 0, 20, NULL, 1, 60, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (23000.00, 40, 0, 28500.00, 0, 40, NULL, 1, 61, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 29000.00, 0, 40, NULL, 1, 62, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 63, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 64, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 65, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 66, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 28000.00, 0, 40, NULL, 1, 67, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 29000.00, 0, 40, NULL, 1, 68, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 28500.00, 0, 40, NULL, 1, 69, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 60, 0, 27000.00, 0, 60, NULL, 1, 70, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (45000.00, 50, 0, 50000.00, 0, 50, NULL, 1, 71, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 30, 0, 133000.00, 0, 30, NULL, 1, 72, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (116000.00, 40, 0, 124000.00, 0, 40, NULL, 1, 73, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (140000.00, 40, 0, 155000.00, 0, 40, NULL, 1, 74, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 50, 0, 133000.00, 0, 50, NULL, 1, 75, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (160000.00, 70, 0, 175000.00, 0, 70, NULL, 1, 76, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 40, 0, 153000.00, 0, 40, NULL, 1, 77, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 30, 0, 109000.00, 0, 30, NULL, 1, 78, 2);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (132000.00, 40, 0, 148000.00, 0, 40, NULL, 1, 79, 2);

-----

INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20000.00, 40, 0, 24000.00, 0, 40, NULL, 1, 1, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20000.00, 50, 0, 24000.00, 0, 50, NULL, 1, 2, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (21000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 3, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 20, 0, 30000.00, 0, 20, NULL, 1, 4, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 5, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22500.00, 70, 0, 25500.00, 0, 70, NULL, 1, 6, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (19500.00, 20, 0, 24000.00, 0, 20, NULL, 1, 7, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 8, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (17500.00, 20, 0, 23000.00, 0, 20, NULL, 1, 9, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20500.00, 60, 0, 24000.00, 0, 60, NULL, 1, 10, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (5000.00, 40, 0, 7000.00, 0, 40, NULL, 1, 11, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (7000.00, 20, 0, 10000.00, 0, 20, NULL, 1, 12, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (500000.00, 20, 0, 580000.00, 0, 20, NULL, 1, 13, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4000.00, 20, 0, 6500.00, 0, 20, NULL, 1, 14, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (200000.00, 20, 0, 260000.00, 0, 20, NULL, 1, 15, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (1000.00, 1000, 0, 2000.00, 0, 1000, NULL, 1, 16, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (50000.00, 20, 0, 54000.00, 0, 20, NULL, 1, 17, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4800000.00, 20, 0, 5000000.00, 0, 20, NULL, 1, 18, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (50000.00, 20, 0, 55000.00, 0, 20, NULL, 1, 19, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (6000000.00, 20, 0, 6200000.00, 0, 20, NULL, 1, 20, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (250000.00, 30, 0, 272000.00, 0, 30, NULL, 1, 21, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (140000.00, 30, 0, 161000.00, 0, 30, NULL, 1, 22, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (1200000.00, 15, 0, 1350000.00, 0, 15, NULL, 1, 23, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (145000.00, 30, 0, 158000.00, 0, 30, NULL, 1, 24, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (67000.00, 40, 0, 74000.00, 0, 40, NULL, 1, 25, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (750000.00, 25, 0, 783000.00, 0, 25, NULL, 1, 26, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 30, 0, 141000.00, 0, 30, NULL, 1, 27, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (600000.00, 30, 0, 617000.00, 0, 30, NULL, 1, 28, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 30, 0, 147000.00, 0, 30, NULL, 1, 29, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (100000.00, 30, 0, 121000.00, 0, 30, NULL, 1, 30, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (3500000.00, 30, 0, 3615000.00, 0, 30, NULL, 1, 31, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (80000.00, 30, 0, 91000.00, 0, 30, NULL, 1, 32, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (450000.00, 45, 0, 471000.00, 0, 45, NULL, 1, 33, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (100000.00, 35, 0, 113000.00, 0, 35, NULL, 1, 34, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (250000.00, 20, 0, 264000.00, 0, 20, NULL, 1, 35, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (30000.00, 30, 0, 38000.00, 0, 30, NULL, 1, 36, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (40000.00, 30, 0, 46000.00, 0, 30, NULL, 1, 37, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 25, 0, 107000.00, 0, 25, NULL, 1, 38, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (950000.00, 15, 0, 100000.00, 0, 15, NULL, 1, 39, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (54000.00, 30, 0, 61500.00, 0, 30, NULL, 1, 40, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (29000.00, 40, 0, 32000.00, 0, 40, NULL, 1, 41, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (43000.00, 25, 0, 45000.00, 0, 25, NULL, 1, 42, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (59000.00, 30, 0, 62000.00, 0, 30, NULL, 1, 43, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4800000.00, 10, 0, 4990000.00, 0, 10, NULL, 1, 44, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (174000.00, 20, 0, 180000.00, 0, 20, NULL, 1, 45, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (620000.00, 10, 0, 633000.00, 0, 10, NULL, 1, 46, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 10, 0, 138000.00, 0, 10, NULL, 1, 47, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 10, 0, 103000.00, 0, 10, NULL, 1, 48, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (33000.00, 10, 0, 40000.00, 0, 10, NULL, 1, 49, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (7400000.00, 10, 0, 7540000.00, 0, 10, NULL, 1, 50, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (52000.00, 20, 0, 56000.00, 0, 20, NULL, 1, 51, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (43000.00, 25, 0, 48000.00, 0, 25, NULL, 1, 52, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (48000.00, 25, 0, 52000.00, 0, 25, NULL, 1, 53, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (19840.00, 20, 0, 33000.00, 0, 20, NULL, 1, 54, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (29000.00, 30, 0, 34000.00, 0, 30, NULL, 1, 55, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (31000.00, 50, 0, 37000.00, 0, 50, NULL, 1, 56, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (38000.00, 20, 0, 43000.00, 0, 20, NULL, 1, 57, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (53000.00, 15, 0, 58000.00, 0, 15, NULL, 1, 58, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (48000.00, 20, 0, 52000.00, 0, 20, NULL, 1, 59, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (37000.00, 20, 0, 41000.00, 0, 20, NULL, 1, 60, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (23000.00, 40, 0, 28500.00, 0, 40, NULL, 1, 61, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 29000.00, 0, 40, NULL, 1, 62, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 60, 0, 27500.00, 0, 60, NULL, 1, 63, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 64, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 65, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 66, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 28000.00, 0, 40, NULL, 1, 67, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 29000.00, 0, 40, NULL, 1, 68, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 28500.00, 0, 40, NULL, 1, 69, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 70, 0, 27000.00, 0, 70, NULL, 1, 70, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (45000.00, 50, 0, 50000.00, 0, 50, NULL, 1, 71, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 30, 0, 133000.00, 0, 30, NULL, 1, 72, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (116000.00, 40, 0, 124000.00, 0, 40, NULL, 1, 73, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (140000.00, 40, 0, 155000.00, 0, 40, NULL, 1, 74, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 50, 0, 133000.00, 0, 50, NULL, 1, 75, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (160000.00, 50, 0, 175000.00, 0, 50, NULL, 1, 76, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 30, 0, 153000.00, 0, 30, NULL, 1, 77, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 30, 0, 109000.00, 0, 30, NULL, 1, 78, 3);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (132000.00, 40, 0, 148000.00, 0, 40, NULL, 1, 79, 3);

-----

INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20000.00, 30, 0, 24000.00, 0, 30, NULL, 1, 1, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20000.00, 60, 0, 24000.00, 0, 60, NULL, 1, 2, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (21000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 3, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 30000.00, 0, 40, NULL, 1, 4, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 5, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22500.00, 20, 0, 25500.00, 0, 20, NULL, 1, 6, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (19500.00, 20, 0, 24000.00, 0, 20, NULL, 1, 7, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 8, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (17500.00, 50, 0, 23000.00, 0, 50, NULL, 1, 9, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20500.00, 20, 0, 24000.00, 0, 20, NULL, 1, 10, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (5000.00, 40, 0, 7000.00, 0, 40, NULL, 1, 11, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (7000.00, 20, 0, 10000.00, 0, 20, NULL, 1, 12, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (500000.00, 50, 0, 580000.00, 0, 50, NULL, 1, 13, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4000.00, 20, 0, 6500.00, 0, 20, NULL, 1, 14, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (200000.00, 20, 0, 260000.00, 0, 20, NULL, 1, 15, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (1000.00, 1000, 0, 2000.00, 0, 1000, NULL, 1, 16, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (50000.00, 20, 0, 54000.00, 0, 20, NULL, 1, 17, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4800000.00, 20, 0, 5000000.00, 0, 20, NULL, 1, 18, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (50000.00, 20, 0, 55000.00, 0, 20, NULL, 1, 19, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (6000000.00, 20, 0, 6200000.00, 0, 20, NULL, 1, 20, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (250000.00, 30, 0, 272000.00, 0, 30, NULL, 1, 21, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (140000.00, 30, 0, 161000.00, 0, 30, NULL, 1, 22, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (1200000.00, 15, 0, 1350000.00, 0, 15, NULL, 1, 23, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (145000.00, 30, 0, 158000.00, 0, 30, NULL, 1, 24, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (67000.00, 40, 0, 74000.00, 0, 40, NULL, 1, 25, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (750000.00, 65, 0, 783000.00, 0, 65, NULL, 1, 26, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 30, 0, 141000.00, 0, 30, NULL, 1, 27, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (600000.00, 60, 0, 617000.00, 0, 60, NULL, 1, 28, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 40, 0, 147000.00, 0, 40, NULL, 1, 29, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (100000.00, 30, 0, 121000.00, 0, 30, NULL, 1, 30, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (3500000.00, 30, 0, 3615000.00, 0, 30, NULL, 1, 31, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (80000.00, 30, 0, 91000.00, 0, 30, NULL, 1, 32, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (450000.00, 25, 0, 471000.00, 0, 25, NULL, 1, 33, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (100000.00, 85, 0, 113000.00, 0, 85, NULL, 1, 34, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (250000.00, 20, 0, 264000.00, 0, 20, NULL, 1, 35, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (30000.00, 30, 0, 38000.00, 0, 30, NULL, 1, 36, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (40000.00, 30, 0, 46000.00, 0, 30, NULL, 1, 37, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 25, 0, 107000.00, 0, 25, NULL, 1, 38, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (950000.00, 15, 0, 100000.00, 0, 15, NULL, 1, 39, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (54000.00, 30, 0, 61500.00, 0, 30, NULL, 1, 40, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (29000.00, 40, 0, 32000.00, 0, 40, NULL, 1, 41, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (43000.00, 25, 0, 45000.00, 0, 25, NULL, 1, 42, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (59000.00, 30, 0, 62000.00, 0, 30, NULL, 1, 43, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4800000.00, 10, 0, 4990000.00, 0, 10, NULL, 1, 44, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (174000.00, 40, 0, 180000.00, 0, 40, NULL, 1, 45, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (620000.00, 20, 0, 633000.00, 0, 20, NULL, 1, 46, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 10, 0, 138000.00, 0, 10, NULL, 1, 47, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 10, 0, 103000.00, 0, 10, NULL, 1, 48, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (33000.00, 10, 0, 40000.00, 0, 10, NULL, 1, 49, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (7400000.00, 10, 0, 7540000.00, 0, 10, NULL, 1, 50, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (52000.00, 20, 0, 56000.00, 0, 20, NULL, 1, 51, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (43000.00, 25, 0, 48000.00, 0, 25, NULL, 1, 52, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (48000.00, 25, 0, 52000.00, 0, 25, NULL, 1, 53, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (19840.00, 20, 0, 33000.00, 0, 20, NULL, 1, 54, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (29000.00, 30, 0, 34000.00, 0, 30, NULL, 1, 55, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (31000.00, 30, 0, 37000.00, 0, 30, NULL, 1, 56, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (38000.00, 20, 0, 43000.00, 0, 20, NULL, 1, 57, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (53000.00, 15, 0, 58000.00, 0, 15, NULL, 1, 58, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (48000.00, 20, 0, 52000.00, 0, 20, NULL, 1, 59, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (37000.00, 40, 0, 41000.00, 0, 40, NULL, 1, 60, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (23000.00, 40, 0, 28500.00, 0, 40, NULL, 1, 61, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 60, 0, 29000.00, 0, 60, NULL, 1, 62, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 63, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 80, 0, 27500.00, 0, 80, NULL, 1, 64, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 65, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 66, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 70, 0, 28000.00, 0, 70, NULL, 1, 67, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 60, 0, 29000.00, 0, 60, NULL, 1, 68, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 28500.00, 0, 40, NULL, 1, 69, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27000.00, 0, 40, NULL, 1, 70, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (45000.00, 50, 0, 50000.00, 0, 50, NULL, 1, 71, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 40, 0, 133000.00, 0, 40, NULL, 1, 72, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (116000.00, 50, 0, 124000.00, 0, 50, NULL, 1, 73, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (140000.00, 40, 0, 155000.00, 0, 40, NULL, 1, 74, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 50, 0, 133000.00, 0, 50, NULL, 1, 75, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (160000.00, 80, 0, 175000.00, 0, 80, NULL, 1, 76, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 50, 0, 153000.00, 0, 50, NULL, 1, 77, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 60, 0, 109000.00, 0, 60, NULL, 1, 78, 4);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (132000.00, 40, 0, 148000.00, 0, 40, NULL, 1, 79, 4);

-----

INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20000.00, 20, 0, 24000.00, 0, 20, NULL, 1, 1, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20000.00, 70, 0, 24000.00, 0, 70, NULL, 1, 2, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (21000.00, 80, 0, 25000.00, 0, 80, NULL, 1, 3, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 30000.00, 0, 40, NULL, 1, 4, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22000.00, 50, 0, 25000.00, 0, 50, NULL, 1, 5, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22500.00, 70, 0, 25500.00, 0, 70, NULL, 1, 6, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (19500.00, 80, 0, 24000.00, 0, 80, NULL, 1, 7, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22000.00, 80, 0, 25000.00, 0, 80, NULL, 1, 8, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (17500.00, 20, 0, 23000.00, 0, 20, NULL, 1, 9, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20500.00, 20, 0, 24000.00, 0, 20, NULL, 1, 10, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (5000.00, 40, 0, 7000.00, 0, 40, NULL, 1, 11, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (7000.00, 20, 0, 10000.00, 0, 20, NULL, 1, 12, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (500000.00, 20, 0, 580000.00, 0, 20, NULL, 1, 13, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4000.00, 20, 0, 6500.00, 0, 20, NULL, 1, 14, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (200000.00, 20, 0, 260000.00, 0, 20, NULL, 1, 15, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (1000.00, 1000, 0, 2000.00, 0, 1000, NULL, 1, 16, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (50000.00, 20, 0, 54000.00, 0, 20, NULL, 1, 17, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4800000.00, 20, 0, 5000000.00, 0, 20, NULL, 1, 18, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (50000.00, 20, 0, 55000.00, 0, 20, NULL, 1, 19, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (6000000.00, 20, 0, 6200000.00, 0, 20, NULL, 1, 20, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (250000.00, 30, 0, 272000.00, 0, 30, NULL, 1, 21, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (140000.00, 30, 0, 161000.00, 0, 30, NULL, 1, 22, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (1200000.00, 15, 0, 1350000.00, 0, 15, NULL, 1, 23, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (145000.00, 30, 0, 158000.00, 0, 30, NULL, 1, 24, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (67000.00, 40, 0, 74000.00, 0, 40, NULL, 1, 25, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (750000.00, 25, 0, 783000.00, 0, 25, NULL, 1, 26, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 30, 0, 141000.00, 0, 30, NULL, 1, 27, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (600000.00, 30, 0, 617000.00, 0, 30, NULL, 1, 28, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 30, 0, 147000.00, 0, 30, NULL, 1, 29, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (100000.00, 30, 0, 121000.00, 0, 30, NULL, 1, 30, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (3500000.00, 30, 0, 3615000.00, 0, 30, NULL, 1, 31, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (80000.00, 30, 0, 91000.00, 0, 30, NULL, 1, 32, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (450000.00, 25, 0, 471000.00, 0, 25, NULL, 1, 33, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (100000.00, 35, 0, 113000.00, 0, 35, NULL, 1, 34, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (250000.00, 20, 0, 264000.00, 0, 20, NULL, 1, 35, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (30000.00, 30, 0, 38000.00, 0, 30, NULL, 1, 36, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (40000.00, 30, 0, 46000.00, 0, 30, NULL, 1, 37, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 25, 0, 107000.00, 0, 25, NULL, 1, 38, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (950000.00, 15, 0, 100000.00, 0, 15, NULL, 1, 39, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (54000.00, 50, 0, 61500.00, 0, 50, NULL, 1, 40, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (29000.00, 40, 0, 32000.00, 0, 40, NULL, 1, 41, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (43000.00, 25, 0, 45000.00, 0, 25, NULL, 1, 42, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (59000.00, 40, 0, 62000.00, 0, 40, NULL, 1, 43, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4800000.00, 10, 0, 4990000.00, 0, 10, NULL, 1, 44, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (174000.00, 20, 0, 180000.00, 0, 20, NULL, 1, 45, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (620000.00, 10, 0, 633000.00, 0, 10, NULL, 1, 46, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 20, 0, 138000.00, 0, 20, NULL, 1, 47, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 10, 0, 103000.00, 0, 10, NULL, 1, 48, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (33000.00, 20, 0, 40000.00, 0, 20, NULL, 1, 49, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (7400000.00, 20, 0, 7540000.00, 0, 20, NULL, 1, 50, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (52000.00, 20, 0, 56000.00, 0, 20, NULL, 1, 51, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (43000.00, 25, 0, 48000.00, 0, 25, NULL, 1, 52, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (48000.00, 25, 0, 52000.00, 0, 25, NULL, 1, 53, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (19840.00, 20, 0, 33000.00, 0, 20, NULL, 1, 54, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (29000.00, 30, 0, 34000.00, 0, 30, NULL, 1, 55, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (31000.00, 70, 0, 37000.00, 0, 70, NULL, 1, 56, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (38000.00, 50, 0, 43000.00, 0, 50, NULL, 1, 57, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (53000.00, 15, 0, 58000.00, 0, 15, NULL, 1, 58, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (48000.00, 20, 0, 52000.00, 0, 20, NULL, 1, 59, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (37000.00, 20, 0, 41000.00, 0, 20, NULL, 1, 60, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (23000.00, 40, 0, 28500.00, 0, 40, NULL, 1, 61, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 29000.00, 0, 40, NULL, 1, 62, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 63, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 64, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 65, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 66, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 28000.00, 0, 40, NULL, 1, 67, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 29000.00, 0, 40, NULL, 1, 68, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 28500.00, 0, 40, NULL, 1, 69, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27000.00, 0, 40, NULL, 1, 70, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (45000.00, 70, 0, 50000.00, 0, 70, NULL, 1, 71, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 80, 0, 133000.00, 0, 80, NULL, 1, 72, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (116000.00, 90, 0, 124000.00, 0, 90, NULL, 1, 73, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (140000.00, 40, 0, 155000.00, 0, 40, NULL, 1, 74, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 50, 0, 133000.00, 0, 50, NULL, 1, 75, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (160000.00, 50, 0, 175000.00, 0, 50, NULL, 1, 76, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 60, 0, 153000.00, 0, 60, NULL, 1, 77, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 30, 0, 109000.00, 0, 30, NULL, 1, 78, 5);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (132000.00, 40, 0, 148000.00, 0, 40, NULL, 1, 79, 5);

-----

INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20000.00, 80, 0, 24000.00, 0, 80, NULL, 1, 1, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20000.00, 20, 0, 24000.00, 0, 20, NULL, 1, 2, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (21000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 3, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 20, 0, 30000.00, 0, 20, NULL, 1, 4, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22000.00, 40, 0, 25000.00, 0, 40, NULL, 1, 5, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22500.00, 20, 0, 25500.00, 0, 20, NULL, 1, 6, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (19500.00, 20, 0, 24000.00, 0, 20, NULL, 1, 7, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 8, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (17500.00, 20, 0, 23000.00, 0, 20, NULL, 1, 9, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20500.00, 40, 0, 24000.00, 0, 40, NULL, 1, 10, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (5000.00, 40, 0, 7000.00, 0, 40, NULL, 1, 11, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (7000.00, 20, 0, 10000.00, 0, 20, NULL, 1, 12, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (500000.00, 40, 0, 580000.00, 0, 40, NULL, 1, 13, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4000.00, 20, 0, 6500.00, 0, 20, NULL, 1, 14, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (200000.00, 40, 0, 260000.00, 0, 40, NULL, 1, 15, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (1000.00, 1000, 0, 2000.00, 0, 1000, NULL, 1, 16, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (50000.00, 20, 0, 54000.00, 0, 20, NULL, 1, 17, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4800000.00, 20, 0, 5000000.00, 0, 20, NULL, 1, 18, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (50000.00, 20, 0, 55000.00, 0, 20, NULL, 1, 19, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (6000000.00, 20, 0, 6200000.00, 0, 20, NULL, 1, 20, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (250000.00, 50, 0, 272000.00, 0, 50, NULL, 1, 21, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (140000.00, 50, 0, 161000.00, 0, 50, NULL, 1, 22, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (1200000.00, 15, 0, 1350000.00, 0, 15, NULL, 1, 23, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (145000.00, 30, 0, 158000.00, 0, 30, NULL, 1, 24, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (67000.00, 40, 0, 74000.00, 0, 40, NULL, 1, 25, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (750000.00, 55, 0, 783000.00, 0, 55, NULL, 1, 26, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 30, 0, 141000.00, 0, 30, NULL, 1, 27, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (600000.00, 30, 0, 617000.00, 0, 30, NULL, 1, 28, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 50, 0, 147000.00, 0, 50, NULL, 1, 29, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (100000.00, 30, 0, 121000.00, 0, 30, NULL, 1, 30, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (3500000.00, 30, 0, 3615000.00, 0, 30, NULL, 1, 31, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (80000.00, 30, 0, 91000.00, 0, 30, NULL, 1, 32, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (450000.00, 25, 0, 471000.00, 0, 25, NULL, 1, 33, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (100000.00, 35, 0, 113000.00, 0, 35, NULL, 1, 34, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (250000.00, 20, 0, 264000.00, 0, 20, NULL, 1, 35, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (30000.00, 30, 0, 38000.00, 0, 30, NULL, 1, 36, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (40000.00, 30, 0, 46000.00, 0, 30, NULL, 1, 37, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 25, 0, 107000.00, 0, 25, NULL, 1, 38, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (950000.00, 15, 0, 100000.00, 0, 15, NULL, 1, 39, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (54000.00, 30, 0, 61500.00, 0, 30, NULL, 1, 40, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (29000.00, 40, 0, 32000.00, 0, 40, NULL, 1, 41, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (43000.00, 55, 0, 45000.00, 0, 55, NULL, 1, 42, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (59000.00, 30, 0, 62000.00, 0, 30, NULL, 1, 43, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4800000.00, 10, 0, 4990000.00, 0, 10, NULL, 1, 44, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (174000.00, 20, 0, 180000.00, 0, 20, NULL, 1, 45, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (620000.00, 10, 0, 633000.00, 0, 10, NULL, 1, 46, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 10, 0, 138000.00, 0, 10, NULL, 1, 47, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 10, 0, 103000.00, 0, 10, NULL, 1, 48, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (33000.00, 10, 0, 40000.00, 0, 10, NULL, 1, 49, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (7400000.00, 10, 0, 7540000.00, 0, 10, NULL, 1, 50, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (52000.00, 20, 0, 56000.00, 0, 20, NULL, 1, 51, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (43000.00, 25, 0, 48000.00, 0, 25, NULL, 1, 52, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (48000.00, 25, 0, 52000.00, 0, 25, NULL, 1, 53, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (19840.00, 20, 0, 33000.00, 0, 20, NULL, 1, 54, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (29000.00, 30, 0, 34000.00, 0, 30, NULL, 1, 55, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (31000.00, 30, 0, 37000.00, 0, 30, NULL, 1, 56, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (38000.00, 20, 0, 43000.00, 0, 20, NULL, 1, 57, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (53000.00, 15, 0, 58000.00, 0, 15, NULL, 1, 58, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (48000.00, 20, 0, 52000.00, 0, 20, NULL, 1, 59, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (37000.00, 20, 0, 41000.00, 0, 20, NULL, 1, 60, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (23000.00, 40, 0, 28500.00, 0, 40, NULL, 1, 61, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 29000.00, 0, 40, NULL, 1, 62, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 63, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 64, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 50, 0, 27500.00, 0, 50, NULL, 1, 65, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 66, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 50, 0, 28000.00, 0, 50, NULL, 1, 67, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 29000.00, 0, 40, NULL, 1, 68, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 28500.00, 0, 40, NULL, 1, 69, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 50, 0, 27000.00, 0, 50, NULL, 1, 70, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (45000.00, 50, 0, 50000.00, 0, 50, NULL, 1, 71, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 30, 0, 133000.00, 0, 30, NULL, 1, 72, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (116000.00, 40, 0, 124000.00, 0, 40, NULL, 1, 73, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (140000.00, 50, 0, 155000.00, 0, 50, NULL, 1, 74, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 50, 0, 133000.00, 0, 50, NULL, 1, 75, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (160000.00, 50, 0, 175000.00, 0, 50, NULL, 1, 76, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 40, 0, 153000.00, 0, 40, NULL, 1, 77, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 30, 0, 109000.00, 0, 30, NULL, 1, 78, 6);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (132000.00, 70, 0, 148000.00, 0, 70, NULL, 1, 79, 6);


-----


INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20000.00, 20, 0, 24000.00, 0, 20, NULL, 1, 1, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20000.00, 20, 0, 24000.00, 0, 20, NULL, 1, 2, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (21000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 3, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 20, 0, 30000.00, 0, 20, NULL, 1, 4, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 5, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22500.00, 20, 0, 25500.00, 0, 20, NULL, 1, 6, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (19500.00, 20, 0, 24000.00, 0, 20, NULL, 1, 7, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 8, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (17500.00, 20, 0, 23000.00, 0, 20, NULL, 1, 9, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20500.00, 50, 0, 24000.00, 0, 50, NULL, 1, 10, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (5000.00, 40, 0, 7000.00, 0, 40, NULL, 1, 11, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (7000.00, 70, 0, 10000.00, 0, 70, NULL, 1, 12, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (500000.00, 60, 0, 580000.00, 0, 60, NULL, 1, 13, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4000.00, 70, 0, 6500.00, 0, 70, NULL, 1, 14, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (200000.00, 30, 0, 260000.00, 0, 30, NULL, 1, 15, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (1000.00, 1000, 0, 2000.00, 0, 1000, NULL, 1, 16, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (50000.00, 20, 0, 54000.00, 0, 20, NULL, 1, 17, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4800000.00, 20, 0, 5000000.00, 0, 20, NULL, 1, 18, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (50000.00, 40, 0, 55000.00, 0, 40, NULL, 1, 19, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (6000000.00, 20, 0, 6200000.00, 0, 20, NULL, 1, 20, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (250000.00, 30, 0, 272000.00, 0, 30, NULL, 1, 21, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (140000.00, 30, 0, 161000.00, 0, 30, NULL, 1, 22, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (1200000.00, 15, 0, 1350000.00, 0, 15, NULL, 1, 23, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (145000.00, 30, 0, 158000.00, 0, 30, NULL, 1, 24, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (67000.00, 40, 0, 74000.00, 0, 40, NULL, 1, 25, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (750000.00, 25, 0, 783000.00, 0, 25, NULL, 1, 26, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 30, 0, 141000.00, 0, 30, NULL, 1, 27, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (600000.00, 30, 0, 617000.00, 0, 30, NULL, 1, 28, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 30, 0, 147000.00, 0, 30, NULL, 1, 29, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (100000.00, 30, 0, 121000.00, 0, 30, NULL, 1, 30, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (3500000.00, 30, 0, 3615000.00, 0, 30, NULL, 1, 31, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (80000.00, 30, 0, 91000.00, 0, 30, NULL, 1, 32, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (450000.00, 25, 0, 471000.00, 0, 25, NULL, 1, 33, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (100000.00, 35, 0, 113000.00, 0, 35, NULL, 1, 34, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (250000.00, 20, 0, 264000.00, 0, 20, NULL, 1, 35, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (30000.00, 30, 0, 38000.00, 0, 30, NULL, 1, 36, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (40000.00, 50, 0, 46000.00, 0, 50, NULL, 1, 37, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 25, 0, 107000.00, 0, 25, NULL, 1, 38, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (950000.00, 15, 0, 100000.00, 0, 15, NULL, 1, 39, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (54000.00, 30, 0, 61500.00, 0, 30, NULL, 1, 40, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (29000.00, 40, 0, 32000.00, 0, 40, NULL, 1, 41, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (43000.00, 25, 0, 45000.00, 0, 25, NULL, 1, 42, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (59000.00, 60, 0, 62000.00, 0, 60, NULL, 1, 43, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4800000.00, 10, 0, 4990000.00, 0, 10, NULL, 1, 44, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (174000.00, 20, 0, 180000.00, 0, 20, NULL, 1, 45, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (620000.00, 10, 0, 633000.00, 0, 10, NULL, 1, 46, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 30, 0, 138000.00, 0, 30, NULL, 1, 47, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 10, 0, 103000.00, 0, 10, NULL, 1, 48, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (33000.00, 10, 0, 40000.00, 0, 10, NULL, 1, 49, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (7400000.00, 10, 0, 7540000.00, 0, 10, NULL, 1, 50, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (52000.00, 20, 0, 56000.00, 0, 20, NULL, 1, 51, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (43000.00, 25, 0, 48000.00, 0, 25, NULL, 1, 52, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (48000.00, 25, 0, 52000.00, 0, 25, NULL, 1, 53, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (19840.00, 20, 0, 33000.00, 0, 20, NULL, 1, 54, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (29000.00, 30, 0, 34000.00, 0, 30, NULL, 1, 55, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (31000.00, 30, 0, 37000.00, 0, 30, NULL, 1, 56, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (38000.00, 20, 0, 43000.00, 0, 20, NULL, 1, 57, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (53000.00, 55, 0, 58000.00, 0, 55, NULL, 1, 58, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (48000.00, 20, 0, 52000.00, 0, 20, NULL, 1, 59, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (37000.00, 20, 0, 41000.00, 0, 20, NULL, 1, 60, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (23000.00, 40, 0, 28500.00, 0, 40, NULL, 1, 61, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 29000.00, 0, 40, NULL, 1, 62, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 63, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 64, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 65, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 66, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 28000.00, 0, 40, NULL, 1, 67, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 29000.00, 0, 40, NULL, 1, 68, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 28500.00, 0, 40, NULL, 1, 69, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 60, 0, 27000.00, 0, 60, NULL, 1, 70, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (45000.00, 50, 0, 50000.00, 0, 50, NULL, 1, 71, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 30, 0, 133000.00, 0, 30, NULL, 1, 72, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (116000.00, 40, 0, 124000.00, 0, 40, NULL, 1, 73, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (140000.00, 40, 0, 155000.00, 0, 40, NULL, 1, 74, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 50, 0, 133000.00, 0, 50, NULL, 1, 75, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (160000.00, 50, 0, 175000.00, 0, 50, NULL, 1, 76, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 40, 0, 153000.00, 0, 40, NULL, 1, 77, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 30, 0, 109000.00, 0, 30, NULL, 1, 78, 7);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (132000.00, 40, 0, 148000.00, 0, 40, NULL, 1, 79, 7);

-----

INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20000.00, 20, 0, 24000.00, 0, 20, NULL, 1, 1, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20000.00, 20, 0, 24000.00, 0, 20, NULL, 1, 2, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (21000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 3, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 60, 0, 30000.00, 0, 60, NULL, 1, 4, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 5, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22500.00, 20, 0, 25500.00, 0, 20, NULL, 1, 6, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (19500.00, 60, 0, 24000.00, 0, 60, NULL, 1, 7, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 8, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (17500.00, 20, 0, 23000.00, 0, 20, NULL, 1, 9, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20500.00, 20, 0, 24000.00, 0, 20, NULL, 1, 10, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (5000.00, 40, 0, 7000.00, 0, 40, NULL, 1, 11, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (7000.00, 20, 0, 10000.00, 0, 20, NULL, 1, 12, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (500000.00, 20, 0, 580000.00, 0, 20, NULL, 1, 13, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4000.00, 20, 0, 6500.00, 0, 20, NULL, 1, 14, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (200000.00, 20, 0, 260000.00, 0, 20, NULL, 1, 15, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (1000.00, 1000, 0, 2000.00, 0, 1000, NULL, 1, 16, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (50000.00, 20, 0, 54000.00, 0, 20, NULL, 1, 17, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4800000.00, 20, 0, 5000000.00, 0, 20, NULL, 1, 18, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (50000.00, 20, 0, 55000.00, 0, 20, NULL, 1, 19, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (6000000.00, 20, 0, 6200000.00, 0, 20, NULL, 1, 20, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (250000.00, 30, 0, 272000.00, 0, 30, NULL, 1, 21, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (140000.00, 60, 0, 161000.00, 0, 60, NULL, 1, 22, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (1200000.00, 15, 0, 1350000.00, 0, 15, NULL, 1, 23, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (145000.00, 30, 0, 158000.00, 0, 30, NULL, 1, 24, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (67000.00, 40, 0, 74000.00, 0, 40, NULL, 1, 25, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (750000.00, 25, 0, 783000.00, 0, 25, NULL, 1, 26, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 60, 0, 141000.00, 0, 60, NULL, 1, 27, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (600000.00, 30, 0, 617000.00, 0, 30, NULL, 1, 28, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 30, 0, 147000.00, 0, 30, NULL, 1, 29, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (100000.00, 30, 0, 121000.00, 0, 30, NULL, 1, 30, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (3500000.00, 60, 0, 3615000.00, 0, 60, NULL, 1, 31, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (80000.00, 30, 0, 91000.00, 0, 30, NULL, 1, 32, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (450000.00, 25, 0, 471000.00, 0, 25, NULL, 1, 33, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (100000.00, 35, 0, 113000.00, 0, 35, NULL, 1, 34, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (250000.00, 20, 0, 264000.00, 0, 20, NULL, 1, 35, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (30000.00, 30, 0, 38000.00, 0, 30, NULL, 1, 36, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (40000.00, 30, 0, 46000.00, 0, 30, NULL, 1, 37, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 25, 0, 107000.00, 0, 25, NULL, 1, 38, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (950000.00, 15, 0, 100000.00, 0, 15, NULL, 1, 39, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (54000.00, 30, 0, 61500.00, 0, 30, NULL, 1, 40, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (29000.00, 60, 0, 32000.00, 0, 60, NULL, 1, 41, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (43000.00, 25, 0, 45000.00, 0, 25, NULL, 1, 42, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (59000.00, 30, 0, 62000.00, 0, 30, NULL, 1, 43, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4800000.00, 10, 0, 4990000.00, 0, 10, NULL, 1, 44, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (174000.00, 20, 0, 180000.00, 0, 20, NULL, 1, 45, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (620000.00, 10, 0, 633000.00, 0, 10, NULL, 1, 46, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 10, 0, 138000.00, 0, 10, NULL, 1, 47, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 10, 0, 103000.00, 0, 10, NULL, 1, 48, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (33000.00, 10, 0, 40000.00, 0, 10, NULL, 1, 49, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (7400000.00, 10, 0, 7540000.00, 0, 10, NULL, 1, 50, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (52000.00, 60, 0, 56000.00, 0, 60, NULL, 1, 51, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (43000.00, 25, 0, 48000.00, 0, 25, NULL, 1, 52, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (48000.00, 25, 0, 52000.00, 0, 25, NULL, 1, 53, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (19840.00, 20, 0, 33000.00, 0, 20, NULL, 1, 54, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (29000.00, 30, 0, 34000.00, 0, 30, NULL, 1, 55, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (31000.00, 30, 0, 37000.00, 0, 30, NULL, 1, 56, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (38000.00, 20, 0, 43000.00, 0, 20, NULL, 1, 57, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (53000.00, 15, 0, 58000.00, 0, 15, NULL, 1, 58, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (48000.00, 20, 0, 52000.00, 0, 20, NULL, 1, 59, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (37000.00, 20, 0, 41000.00, 0, 20, NULL, 1, 60, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (23000.00, 60, 0, 28500.00, 0, 60, NULL, 1, 61, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 29000.00, 0, 40, NULL, 1, 62, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 63, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 64, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 65, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 66, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 28000.00, 0, 40, NULL, 1, 67, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 29000.00, 0, 40, NULL, 1, 68, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 28500.00, 0, 40, NULL, 1, 69, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27000.00, 0, 40, NULL, 1, 70, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (45000.00, 60, 0, 50000.00, 0, 60, NULL, 1, 71, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 30, 0, 133000.00, 0, 30, NULL, 1, 72, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (116000.00, 40, 0, 124000.00, 0, 40, NULL, 1, 73, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (140000.00, 40, 0, 155000.00, 0, 40, NULL, 1, 74, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 50, 0, 133000.00, 0, 50, NULL, 1, 75, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (160000.00, 50, 0, 175000.00, 0, 50, NULL, 1, 76, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 40, 0, 153000.00, 0, 40, NULL, 1, 77, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 30, 0, 109000.00, 0, 30, NULL, 1, 78, 8);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (132000.00, 40, 0, 148000.00, 0, 40, NULL, 1, 79, 8);


------

INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20000.00, 20, 0, 24000.00, 0, 20, NULL, 1, 1, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20000.00, 20, 0, 24000.00, 0, 20, NULL, 1, 2, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (21000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 3, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 20, 0, 30000.00, 0, 20, NULL, 1, 4, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 5, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22500.00, 20, 0, 25500.00, 0, 20, NULL, 1, 6, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (19500.00, 20, 0, 24000.00, 0, 20, NULL, 1, 7, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 8, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (17500.00, 70, 0, 23000.00, 0, 70, NULL, 1, 9, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20500.00, 20, 0, 24000.00, 0, 20, NULL, 1, 10, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (5000.00, 40, 0, 7000.00, 0, 40, NULL, 1, 11, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (7000.00, 20, 0, 10000.00, 0, 20, NULL, 1, 12, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (500000.00, 20, 0, 580000.00, 0, 20, NULL, 1, 13, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4000.00, 20, 0, 6500.00, 0, 20, NULL, 1, 14, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (200000.00, 20, 0, 260000.00, 0, 20, NULL, 1, 15, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (1000.00, 1000, 0, 2000.00, 0, 1000, NULL, 1, 16, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (50000.00, 20, 0, 54000.00, 0, 20, NULL, 1, 17, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4800000.00, 20, 0, 5000000.00, 0, 20, NULL, 1, 18, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (50000.00, 20, 0, 55000.00, 0, 20, NULL, 1, 19, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (6000000.00, 20, 0, 6200000.00, 0, 20, NULL, 1, 20, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (250000.00, 30, 0, 272000.00, 0, 30, NULL, 1, 21, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (140000.00, 30, 0, 161000.00, 0, 30, NULL, 1, 22, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (1200000.00, 15, 0, 1350000.00, 0, 15, NULL, 1, 23, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (145000.00, 30, 0, 158000.00, 0, 30, NULL, 1, 24, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (67000.00, 40, 0, 74000.00, 0, 40, NULL, 1, 25, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (750000.00, 25, 0, 783000.00, 0, 25, NULL, 1, 26, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 30, 0, 141000.00, 0, 30, NULL, 1, 27, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (600000.00, 30, 0, 617000.00, 0, 30, NULL, 1, 28, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 30, 0, 147000.00, 0, 30, NULL, 1, 29, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (100000.00, 70, 0, 121000.00, 0, 70, NULL, 1, 30, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (3500000.00, 30, 0, 3615000.00, 0, 30, NULL, 1, 31, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (80000.00, 30, 0, 91000.00, 0, 30, NULL, 1, 32, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (450000.00, 25, 0, 471000.00, 0, 25, NULL, 1, 33, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (100000.00, 35, 0, 113000.00, 0, 35, NULL, 1, 34, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (250000.00, 20, 0, 264000.00, 0, 20, NULL, 1, 35, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (30000.00, 30, 0, 38000.00, 0, 30, NULL, 1, 36, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (40000.00, 30, 0, 46000.00, 0, 30, NULL, 1, 37, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 25, 0, 107000.00, 0, 25, NULL, 1, 38, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (950000.00, 65, 0, 100000.00, 0, 65, NULL, 1, 39, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (54000.00, 30, 0, 61500.00, 0, 30, NULL, 1, 40, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (29000.00, 60, 0, 32000.00, 0, 60, NULL, 1, 41, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (43000.00, 25, 0, 45000.00, 0, 25, NULL, 1, 42, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (59000.00, 30, 0, 62000.00, 0, 30, NULL, 1, 43, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4800000.00, 10, 0, 4990000.00, 0, 10, NULL, 1, 44, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (174000.00, 20, 0, 180000.00, 0, 20, NULL, 1, 45, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (620000.00, 10, 0, 633000.00, 0, 10, NULL, 1, 46, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 60, 0, 138000.00, 0, 60, NULL, 1, 47, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 10, 0, 103000.00, 0, 10, NULL, 1, 48, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (33000.00, 10, 0, 40000.00, 0, 10, NULL, 1, 49, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (7400000.00, 10, 0, 7540000.00, 0, 10, NULL, 1, 50, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (52000.00, 20, 0, 56000.00, 0, 20, NULL, 1, 51, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (43000.00, 25, 0, 48000.00, 0, 25, NULL, 1, 52, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (48000.00, 25, 0, 52000.00, 0, 25, NULL, 1, 53, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (19840.00, 20, 0, 33000.00, 0, 20, NULL, 1, 54, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (29000.00, 30, 0, 34000.00, 0, 30, NULL, 1, 55, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (31000.00, 30, 0, 37000.00, 0, 30, NULL, 1, 56, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (38000.00, 60, 0, 43000.00, 0, 60, NULL, 1, 57, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (53000.00, 15, 0, 58000.00, 0, 15, NULL, 1, 58, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (48000.00, 20, 0, 52000.00, 0, 20, NULL, 1, 59, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (37000.00, 20, 0, 41000.00, 0, 20, NULL, 1, 60, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (23000.00, 40, 0, 28500.00, 0, 40, NULL, 1, 61, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 60, 0, 29000.00, 0, 60, NULL, 1, 62, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 63, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 64, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 65, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 66, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 28000.00, 0, 40, NULL, 1, 67, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 29000.00, 0, 40, NULL, 1, 68, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 60, 0, 28500.00, 0, 60, NULL, 1, 69, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 60, 0, 27000.00, 0, 60, NULL, 1, 70, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (45000.00, 50, 0, 50000.00, 0, 50, NULL, 1, 71, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 30, 0, 133000.00, 0, 30, NULL, 1, 72, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (116000.00, 40, 0, 124000.00, 0, 40, NULL, 1, 73, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (140000.00, 40, 0, 155000.00, 0, 40, NULL, 1, 74, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 50, 0, 133000.00, 0, 50, NULL, 1, 75, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (160000.00, 50, 0, 175000.00, 0, 50, NULL, 1, 76, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 40, 0, 153000.00, 0, 40, NULL, 1, 77, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 60, 0, 109000.00, 0, 60, NULL, 1, 78, 9);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (132000.00, 40, 0, 148000.00, 0, 40, NULL, 1, 79, 9);

------

INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20000.00, 20, 0, 24000.00, 0, 20, NULL, 1, 1, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20000.00, 20, 0, 24000.00, 0, 20, NULL, 1, 2, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (21000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 3, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 20, 0, 30000.00, 0, 20, NULL, 1, 4, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22000.00, 50, 0, 25000.00, 0, 50, NULL, 1, 5, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22500.00, 50, 0, 25500.00, 0, 50, NULL, 1, 6, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (19500.00, 20, 0, 24000.00, 0, 20, NULL, 1, 7, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 8, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (17500.00, 20, 0, 23000.00, 0, 20, NULL, 1, 9, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20500.00, 20, 0, 24000.00, 0, 20, NULL, 1, 10, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (5000.00, 40, 0, 7000.00, 0, 40, NULL, 1, 11, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (7000.00, 20, 0, 10000.00, 0, 20, NULL, 1, 12, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (500000.00, 20, 0, 580000.00, 0, 20, NULL, 1, 13, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4000.00, 50, 0, 6500.00, 0, 50, NULL, 1, 14, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (200000.00, 20, 0, 260000.00, 0, 20, NULL, 1, 15, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (1000.00, 1000, 0, 2000.00, 0, 1000, NULL, 1, 16, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (50000.00, 50, 0, 54000.00, 0, 50, NULL, 1, 17, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4800000.00, 20, 0, 5000000.00, 0, 20, NULL, 1, 18, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (50000.00, 20, 0, 55000.00, 0, 20, NULL, 1, 19, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (6000000.00, 20, 0, 6200000.00, 0, 20, NULL, 1, 20, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (250000.00, 30, 0, 272000.00, 0, 30, NULL, 1, 21, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (140000.00, 50, 0, 161000.00, 0, 50, NULL, 1, 22, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (1200000.00, 15, 0, 1350000.00, 0, 15, NULL, 1, 23, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (145000.00, 30, 0, 158000.00, 0, 30, NULL, 1, 24, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (67000.00, 40, 0, 74000.00, 0, 40, NULL, 1, 25, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (750000.00, 25, 0, 783000.00, 0, 25, NULL, 1, 26, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 50, 0, 141000.00, 0, 50, NULL, 1, 27, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (600000.00, 30, 0, 617000.00, 0, 30, NULL, 1, 28, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 30, 0, 147000.00, 0, 30, NULL, 1, 29, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (100000.00, 50, 0, 121000.00, 0, 50, NULL, 1, 30, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (3500000.00, 30, 0, 3615000.00, 0, 30, NULL, 1, 31, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (80000.00, 30, 0, 91000.00, 0, 30, NULL, 1, 32, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (450000.00, 25, 0, 471000.00, 0, 25, NULL, 1, 33, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (100000.00, 35, 0, 113000.00, 0, 35, NULL, 1, 34, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (250000.00, 20, 0, 264000.00, 0, 20, NULL, 1, 35, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (30000.00, 30, 0, 38000.00, 0, 30, NULL, 1, 36, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (40000.00, 30, 0, 46000.00, 0, 30, NULL, 1, 37, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 55, 0, 107000.00, 0, 55, NULL, 1, 38, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (950000.00, 15, 0, 100000.00, 0, 15, NULL, 1, 39, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (54000.00, 30, 0, 61500.00, 0, 30, NULL, 1, 40, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (29000.00, 40, 0, 32000.00, 0, 40, NULL, 1, 41, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (43000.00, 55, 0, 45000.00, 0, 55, NULL, 1, 42, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (59000.00, 30, 0, 62000.00, 0, 30, NULL, 1, 43, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4800000.00, 10, 0, 4990000.00, 0, 10, NULL, 1, 44, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (174000.00, 20, 0, 180000.00, 0, 20, NULL, 1, 45, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (620000.00, 50, 0, 633000.00, 0, 50, NULL, 1, 46, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 10, 0, 138000.00, 0, 10, NULL, 1, 47, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 10, 0, 103000.00, 0, 10, NULL, 1, 48, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (33000.00, 50, 0, 40000.00, 0, 50, NULL, 1, 49, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (7400000.00, 50, 0, 7540000.00, 0, 50, NULL, 1, 50, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (52000.00, 20, 0, 56000.00, 0, 20, NULL, 1, 51, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (43000.00, 25, 0, 48000.00, 0, 25, NULL, 1, 52, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (48000.00, 25, 0, 52000.00, 0, 25, NULL, 1, 53, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (19840.00, 20, 0, 33000.00, 0, 20, NULL, 1, 54, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (29000.00, 30, 0, 34000.00, 0, 30, NULL, 1, 55, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (31000.00, 30, 0, 37000.00, 0, 30, NULL, 1, 56, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (38000.00, 20, 0, 43000.00, 0, 20, NULL, 1, 57, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (53000.00, 15, 0, 58000.00, 0, 15, NULL, 1, 58, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (48000.00, 20, 0, 52000.00, 0, 20, NULL, 1, 59, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (37000.00, 20, 0, 41000.00, 0, 20, NULL, 1, 60, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (23000.00, 40, 0, 28500.00, 0, 40, NULL, 1, 61, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 29000.00, 0, 40, NULL, 1, 62, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 63, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 64, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 50, 0, 27500.00, 0, 50, NULL, 1, 65, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 66, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 28000.00, 0, 40, NULL, 1, 67, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 29000.00, 0, 40, NULL, 1, 68, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 50, 0, 28500.00, 0, 50, NULL, 1, 69, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27000.00, 0, 40, NULL, 1, 70, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (45000.00, 50, 0, 50000.00, 0, 50, NULL, 1, 71, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 30, 0, 133000.00, 0, 30, NULL, 1, 72, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (116000.00, 40, 0, 124000.00, 0, 40, NULL, 1, 73, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (140000.00, 40, 0, 155000.00, 0, 40, NULL, 1, 74, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 50, 0, 133000.00, 0, 50, NULL, 1, 75, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (160000.00, 50, 0, 175000.00, 0, 50, NULL, 1, 76, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 40, 0, 153000.00, 0, 40, NULL, 1, 77, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 30, 0, 109000.00, 0, 30, NULL, 1, 78, 10);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (132000.00, 40, 0, 148000.00, 0, 40, NULL, 1, 79, 10);


------


INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20000.00, 20, 0, 24000.00, 0, 20, NULL, 1, 1, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20000.00, 20, 0, 24000.00, 0, 20, NULL, 1, 2, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (21000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 3, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 20, 0, 30000.00, 0, 20, NULL, 1, 4, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 5, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22500.00, 20, 0, 25500.00, 0, 20, NULL, 1, 6, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (19500.00, 20, 0, 24000.00, 0, 20, NULL, 1, 7, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 8, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (17500.00, 70, 0, 23000.00, 0, 70, NULL, 1, 9, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20500.00, 20, 0, 24000.00, 0, 20, NULL, 1, 10, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (5000.00, 40, 0, 7000.00, 0, 40, NULL, 1, 11, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (7000.00, 20, 0, 10000.00, 0, 20, NULL, 1, 12, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (500000.00, 20, 0, 580000.00, 0, 20, NULL, 1, 13, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4000.00, 20, 0, 6500.00, 0, 20, NULL, 1, 14, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (200000.00, 20, 0, 260000.00, 0, 20, NULL, 1, 15, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (1000.00, 1000, 0, 2000.00, 0, 1000, NULL, 1, 16, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (50000.00, 70, 0, 54000.00, 0, 70, NULL, 1, 17, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4800000.00, 70, 0, 5000000.00, 0, 70, NULL, 1, 18, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (50000.00, 20, 0, 55000.00, 0, 20, NULL, 1, 19, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (6000000.00, 20, 0, 6200000.00, 0, 20, NULL, 1, 20, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (250000.00, 30, 0, 272000.00, 0, 30, NULL, 1, 21, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (140000.00, 30, 0, 161000.00, 0, 30, NULL, 1, 22, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (1200000.00, 15, 0, 1350000.00, 0, 15, NULL, 1, 23, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (145000.00, 30, 0, 158000.00, 0, 30, NULL, 1, 24, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (67000.00, 40, 0, 74000.00, 0, 40, NULL, 1, 25, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (750000.00, 25, 0, 783000.00, 0, 25, NULL, 1, 26, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 30, 0, 141000.00, 0, 30, NULL, 1, 27, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (600000.00, 30, 0, 617000.00, 0, 30, NULL, 1, 28, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 30, 0, 147000.00, 0, 30, NULL, 1, 29, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (100000.00, 30, 0, 121000.00, 0, 30, NULL, 1, 30, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (3500000.00, 30, 0, 3615000.00, 0, 30, NULL, 1, 31, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (80000.00, 30, 0, 91000.00, 0, 30, NULL, 1, 32, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (450000.00, 25, 0, 471000.00, 0, 25, NULL, 1, 33, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (100000.00, 35, 0, 113000.00, 0, 35, NULL, 1, 34, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (250000.00, 20, 0, 264000.00, 0, 20, NULL, 1, 35, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (30000.00, 30, 0, 38000.00, 0, 30, NULL, 1, 36, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (40000.00, 30, 0, 46000.00, 0, 30, NULL, 1, 37, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 25, 0, 107000.00, 0, 25, NULL, 1, 38, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (950000.00, 15, 0, 100000.00, 0, 15, NULL, 1, 39, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (54000.00, 30, 0, 61500.00, 0, 30, NULL, 1, 40, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (29000.00, 40, 0, 32000.00, 0, 40, NULL, 1, 41, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (43000.00, 25, 0, 45000.00, 0, 25, NULL, 1, 42, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (59000.00, 30, 0, 62000.00, 0, 30, NULL, 1, 43, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4800000.00, 10, 0, 4990000.00, 0, 10, NULL, 1, 44, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (174000.00, 20, 0, 180000.00, 0, 20, NULL, 1, 45, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (620000.00, 10, 0, 633000.00, 0, 10, NULL, 1, 46, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 10, 0, 138000.00, 0, 10, NULL, 1, 47, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 10, 0, 103000.00, 0, 10, NULL, 1, 48, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (33000.00, 70, 0, 40000.00, 0, 70, NULL, 1, 49, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (7400000.00, 10, 0, 7540000.00, 0, 10, NULL, 1, 50, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (52000.00, 20, 0, 56000.00, 0, 20, NULL, 1, 51, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (43000.00, 25, 0, 48000.00, 0, 25, NULL, 1, 52, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (48000.00, 25, 0, 52000.00, 0, 25, NULL, 1, 53, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (19840.00, 70, 0, 33000.00, 0, 70, NULL, 1, 54, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (29000.00, 30, 0, 34000.00, 0, 30, NULL, 1, 55, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (31000.00, 30, 0, 37000.00, 0, 30, NULL, 1, 56, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (38000.00, 20, 0, 43000.00, 0, 20, NULL, 1, 57, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (53000.00, 15, 0, 58000.00, 0, 15, NULL, 1, 58, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (48000.00, 20, 0, 52000.00, 0, 20, NULL, 1, 59, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (37000.00, 20, 0, 41000.00, 0, 20, NULL, 1, 60, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (23000.00, 40, 0, 28500.00, 0, 40, NULL, 1, 61, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 29000.00, 0, 40, NULL, 1, 62, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 63, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 64, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 65, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 70, 0, 27500.00, 0, 70, NULL, 1, 66, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 28000.00, 0, 40, NULL, 1, 67, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 29000.00, 0, 40, NULL, 1, 68, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 28500.00, 0, 40, NULL, 1, 69, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 70, 0, 27000.00, 0, 70, NULL, 1, 70, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (45000.00, 50, 0, 50000.00, 0, 50, NULL, 1, 71, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 30, 0, 133000.00, 0, 30, NULL, 1, 72, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (116000.00, 40, 0, 124000.00, 0, 40, NULL, 1, 73, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (140000.00, 40, 0, 155000.00, 0, 40, NULL, 1, 74, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 50, 0, 133000.00, 0, 50, NULL, 1, 75, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (160000.00, 50, 0, 175000.00, 0, 50, NULL, 1, 76, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 40, 0, 153000.00, 0, 40, NULL, 1, 77, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 30, 0, 109000.00, 0, 30, NULL, 1, 78, 11);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (132000.00, 70, 0, 148000.00, 0, 70, NULL, 1, 79, 11);

-----

INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20000.00, 70, 0, 24000.00, 0, 70, NULL, 1, 1, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20000.00, 20, 0, 24000.00, 0, 20, NULL, 1, 2, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (21000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 3, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 20, 0, 30000.00, 0, 20, NULL, 1, 4, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 5, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22500.00, 20, 0, 25500.00, 0, 20, NULL, 1, 6, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (19500.00, 20, 0, 24000.00, 0, 20, NULL, 1, 7, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 8, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (17500.00, 20, 0, 23000.00, 0, 20, NULL, 1, 9, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20500.00, 20, 0, 24000.00, 0, 20, NULL, 1, 10, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (5000.00, 40, 0, 7000.00, 0, 40, NULL, 1, 11, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (7000.00, 20, 0, 10000.00, 0, 20, NULL, 1, 12, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (500000.00, 20, 0, 580000.00, 0, 20, NULL, 1, 13, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4000.00, 20, 0, 6500.00, 0, 20, NULL, 1, 14, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (200000.00, 20, 0, 260000.00, 0, 20, NULL, 1, 15, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (1000.00, 1000, 0, 2000.00, 0, 1000, NULL, 1, 16, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (50000.00, 20, 0, 54000.00, 0, 20, NULL, 1, 17, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4800000.00, 60, 0, 5000000.00, 0, 60, NULL, 1, 18, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (50000.00, 20, 0, 55000.00, 0, 20, NULL, 1, 19, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (6000000.00, 20, 0, 6200000.00, 0, 20, NULL, 1, 20, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (250000.00, 30, 0, 272000.00, 0, 30, NULL, 1, 21, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (140000.00, 30, 0, 161000.00, 0, 30, NULL, 1, 22, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (1200000.00, 15, 0, 1350000.00, 0, 15, NULL, 1, 23, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (145000.00, 30, 0, 158000.00, 0, 30, NULL, 1, 24, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (67000.00, 40, 0, 74000.00, 0, 40, NULL, 1, 25, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (750000.00, 25, 0, 783000.00, 0, 25, NULL, 1, 26, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 30, 0, 141000.00, 0, 30, NULL, 1, 27, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (600000.00, 30, 0, 617000.00, 0, 30, NULL, 1, 28, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 30, 0, 147000.00, 0, 30, NULL, 1, 29, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (100000.00, 60, 0, 121000.00, 0, 60, NULL, 1, 30, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (3500000.00, 30, 0, 3615000.00, 0, 30, NULL, 1, 31, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (80000.00, 30, 0, 91000.00, 0, 30, NULL, 1, 32, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (450000.00, 25, 0, 471000.00, 0, 25, NULL, 1, 33, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (100000.00, 35, 0, 113000.00, 0, 35, NULL, 1, 34, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (250000.00, 60, 0, 264000.00, 0, 60, NULL, 1, 35, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (30000.00, 30, 0, 38000.00, 0, 30, NULL, 1, 36, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (40000.00, 60, 0, 46000.00, 0, 60, NULL, 1, 37, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 25, 0, 107000.00, 0, 25, NULL, 1, 38, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (950000.00, 15, 0, 100000.00, 0, 15, NULL, 1, 39, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (54000.00, 30, 0, 61500.00, 0, 30, NULL, 1, 40, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (29000.00, 40, 0, 32000.00, 0, 40, NULL, 1, 41, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (43000.00, 25, 0, 45000.00, 0, 25, NULL, 1, 42, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (59000.00, 30, 0, 62000.00, 0, 30, NULL, 1, 43, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4800000.00, 10, 0, 4990000.00, 0, 10, NULL, 1, 44, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (174000.00, 60, 0, 180000.00, 0, 60, NULL, 1, 45, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (620000.00, 10, 0, 633000.00, 0, 10, NULL, 1, 46, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 10, 0, 138000.00, 0, 10, NULL, 1, 47, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 10, 0, 103000.00, 0, 10, NULL, 1, 48, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (33000.00, 10, 0, 40000.00, 0, 10, NULL, 1, 49, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (7400000.00, 10, 0, 7540000.00, 0, 10, NULL, 1, 50, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (52000.00, 20, 0, 56000.00, 0, 20, NULL, 1, 51, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (43000.00, 25, 0, 48000.00, 0, 25, NULL, 1, 52, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (48000.00, 25, 0, 52000.00, 0, 25, NULL, 1, 53, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (19840.00, 20, 0, 33000.00, 0, 20, NULL, 1, 54, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (29000.00, 60, 0, 34000.00, 0, 60, NULL, 1, 55, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (31000.00, 30, 0, 37000.00, 0, 30, NULL, 1, 56, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (38000.00, 20, 0, 43000.00, 0, 20, NULL, 1, 57, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (53000.00, 15, 0, 58000.00, 0, 15, NULL, 1, 58, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (48000.00, 20, 0, 52000.00, 0, 20, NULL, 1, 59, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (37000.00, 20, 0, 41000.00, 0, 20, NULL, 1, 60, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (23000.00, 60, 0, 28500.00, 0, 60, NULL, 1, 61, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 29000.00, 0, 40, NULL, 1, 62, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 63, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 64, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 60, 0, 27500.00, 0, 60, NULL, 1, 65, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 66, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 60, 0, 28000.00, 0, 60, NULL, 1, 67, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 29000.00, 0, 40, NULL, 1, 68, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 28500.00, 0, 40, NULL, 1, 69, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27000.00, 0, 40, NULL, 1, 70, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (45000.00, 50, 0, 50000.00, 0, 50, NULL, 1, 71, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 30, 0, 133000.00, 0, 30, NULL, 1, 72, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (116000.00, 40, 0, 124000.00, 0, 40, NULL, 1, 73, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (140000.00, 40, 0, 155000.00, 0, 40, NULL, 1, 74, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 50, 0, 133000.00, 0, 50, NULL, 1, 75, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (160000.00, 60, 0, 175000.00, 0, 60, NULL, 1, 76, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 40, 0, 153000.00, 0, 40, NULL, 1, 77, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 30, 0, 109000.00, 0, 30, NULL, 1, 78, 12);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (132000.00, 40, 0, 148000.00, 0, 40, NULL, 1, 79, 12);

-----

INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20000.00, 20, 0, 24000.00, 0, 20, NULL, 1, 1, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20000.00, 20, 0, 24000.00, 0, 20, NULL, 1, 2, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (21000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 3, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 20, 0, 30000.00, 0, 20, NULL, 1, 4, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 5, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22500.00, 20, 0, 25500.00, 0, 20, NULL, 1, 6, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (19500.00, 20, 0, 24000.00, 0, 20, NULL, 1, 7, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 8, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (17500.00, 50, 0, 23000.00, 0, 50, NULL, 1, 9, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20500.00, 20, 0, 24000.00, 0, 20, NULL, 1, 10, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (5000.00, 40, 0, 7000.00, 0, 40, NULL, 1, 11, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (7000.00, 20, 0, 10000.00, 0, 20, NULL, 1, 12, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (500000.00, 20, 0, 580000.00, 0, 20, NULL, 1, 13, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4000.00, 20, 0, 6500.00, 0, 20, NULL, 1, 14, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (200000.00, 20, 0, 260000.00, 0, 20, NULL, 1, 15, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (1000.00, 1000, 0, 2000.00, 0, 1000, NULL, 1, 16, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (50000.00, 20, 0, 54000.00, 0, 20, NULL, 1, 17, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4800000.00, 20, 0, 5000000.00, 0, 20, NULL, 1, 18, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (50000.00, 20, 0, 55000.00, 0, 20, NULL, 1, 19, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (6000000.00, 20, 0, 6200000.00, 0, 20, NULL, 1, 20, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (250000.00, 50, 0, 272000.00, 0, 50, NULL, 1, 21, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (140000.00, 30, 0, 161000.00, 0, 30, NULL, 1, 22, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (1200000.00, 15, 0, 1350000.00, 0, 15, NULL, 1, 23, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (145000.00, 30, 0, 158000.00, 0, 30, NULL, 1, 24, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (67000.00, 50, 0, 74000.00, 0, 50, NULL, 1, 25, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (750000.00, 25, 0, 783000.00, 0, 25, NULL, 1, 26, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 30, 0, 141000.00, 0, 30, NULL, 1, 27, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (600000.00, 30, 0, 617000.00, 0, 30, NULL, 1, 28, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 30, 0, 147000.00, 0, 30, NULL, 1, 29, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (100000.00, 50, 0, 121000.00, 0, 50, NULL, 1, 30, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (3500000.00, 30, 0, 3615000.00, 0, 30, NULL, 1, 31, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (80000.00, 30, 0, 91000.00, 0, 30, NULL, 1, 32, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (450000.00, 25, 0, 471000.00, 0, 25, NULL, 1, 33, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (100000.00, 35, 0, 113000.00, 0, 35, NULL, 1, 34, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (250000.00, 20, 0, 264000.00, 0, 20, NULL, 1, 35, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (30000.00, 30, 0, 38000.00, 0, 30, NULL, 1, 36, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (40000.00, 30, 0, 46000.00, 0, 30, NULL, 1, 37, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 25, 0, 107000.00, 0, 25, NULL, 1, 38, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (950000.00, 15, 0, 100000.00, 0, 15, NULL, 1, 39, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (54000.00, 50, 0, 61500.00, 0, 50, NULL, 1, 40, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (29000.00, 40, 0, 32000.00, 0, 40, NULL, 1, 41, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (43000.00, 25, 0, 45000.00, 0, 25, NULL, 1, 42, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (59000.00, 30, 0, 62000.00, 0, 30, NULL, 1, 43, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4800000.00, 10, 0, 4990000.00, 0, 10, NULL, 1, 44, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (174000.00, 20, 0, 180000.00, 0, 20, NULL, 1, 45, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (620000.00, 10, 0, 633000.00, 0, 10, NULL, 1, 46, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 50, 0, 138000.00, 0, 50, NULL, 1, 47, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 10, 0, 103000.00, 0, 10, NULL, 1, 48, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (33000.00, 50, 0, 40000.00, 0, 50, NULL, 1, 49, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (7400000.00, 10, 0, 7540000.00, 0, 10, NULL, 1, 50, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (52000.00, 20, 0, 56000.00, 0, 20, NULL, 1, 51, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (43000.00, 25, 0, 48000.00, 0, 25, NULL, 1, 52, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (48000.00, 25, 0, 52000.00, 0, 25, NULL, 1, 53, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (19840.00, 20, 0, 33000.00, 0, 20, NULL, 1, 54, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (29000.00, 30, 0, 34000.00, 0, 30, NULL, 1, 55, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (31000.00, 30, 0, 37000.00, 0, 30, NULL, 1, 56, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (38000.00, 50, 0, 43000.00, 0, 50, NULL, 1, 57, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (53000.00, 55, 0, 58000.00, 0, 55, NULL, 1, 58, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (48000.00, 20, 0, 52000.00, 0, 20, NULL, 1, 59, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (37000.00, 20, 0, 41000.00, 0, 20, NULL, 1, 60, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (23000.00, 40, 0, 28500.00, 0, 40, NULL, 1, 61, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 29000.00, 0, 40, NULL, 1, 62, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 63, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 64, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 65, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 66, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 28000.00, 0, 40, NULL, 1, 67, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 29000.00, 0, 40, NULL, 1, 68, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 28500.00, 0, 40, NULL, 1, 69, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27000.00, 0, 40, NULL, 1, 70, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (45000.00, 50, 0, 50000.00, 0, 50, NULL, 1, 71, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 50, 0, 133000.00, 0, 50, NULL, 1, 72, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (116000.00, 40, 0, 124000.00, 0, 40, NULL, 1, 73, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (140000.00, 40, 0, 155000.00, 0, 40, NULL, 1, 74, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 50, 0, 133000.00, 0, 50, NULL, 1, 75, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (160000.00, 50, 0, 175000.00, 0, 50, NULL, 1, 76, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 50, 0, 153000.00, 0, 50, NULL, 1, 77, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 30, 0, 109000.00, 0, 30, NULL, 1, 78, 13);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (132000.00, 40, 0, 148000.00, 0, 40, NULL, 1, 79, 13);

-----

INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20000.00, 50, 0, 24000.00, 0, 50, NULL, 1, 1, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20000.00, 70, 0, 24000.00, 0, 70, NULL, 1, 2, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (21000.00, 60, 0, 25000.00, 0, 60, NULL, 1, 3, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 20, 0, 30000.00, 0, 20, NULL, 1, 4, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22000.00, 20, 0, 25000.00, 0, 20, NULL, 1, 5, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22500.00, 60, 0, 25500.00, 0, 60, NULL, 1, 6, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (19500.00, 20, 0, 24000.00, 0, 20, NULL, 1, 7, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (22000.00, 30, 0, 25000.00, 0, 30, NULL, 1, 8, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (17500.00, 20, 0, 23000.00, 0, 20, NULL, 1, 9, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (20500.00, 20, 0, 24000.00, 0, 20, NULL, 1, 10, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (5000.00, 40, 0, 7000.00, 0, 40, NULL, 1, 11, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (7000.00, 20, 0, 10000.00, 0, 20, NULL, 1, 12, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (500000.00, 20, 0, 580000.00, 0, 20, NULL, 1, 13, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4000.00, 20, 0, 6500.00, 0, 20, NULL, 1, 14, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (200000.00, 20, 0, 260000.00, 0, 20, NULL, 1, 15, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (1000.00, 1000, 0, 2000.00, 0, 1000, NULL, 1, 16, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (50000.00, 20, 0, 54000.00, 0, 20, NULL, 1, 17, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4800000.00, 20, 0, 5000000.00, 0, 20, NULL, 1, 18, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (50000.00, 20, 0, 55000.00, 0, 20, NULL, 1, 19, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (6000000.00, 20, 0, 6200000.00, 0, 20, NULL, 1, 20, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (250000.00, 30, 0, 272000.00, 0, 30, NULL, 1, 21, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (140000.00, 30, 0, 161000.00, 0, 30, NULL, 1, 22, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (1200000.00, 15, 0, 1350000.00, 0, 15, NULL, 1, 23, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (145000.00, 30, 0, 158000.00, 0, 30, NULL, 1, 24, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (67000.00, 40, 0, 74000.00, 0, 40, NULL, 1, 25, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (750000.00, 25, 0, 783000.00, 0, 25, NULL, 1, 26, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 30, 0, 141000.00, 0, 30, NULL, 1, 27, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (600000.00, 30, 0, 617000.00, 0, 30, NULL, 1, 28, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 30, 0, 147000.00, 0, 30, NULL, 1, 29, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (100000.00, 30, 0, 121000.00, 0, 30, NULL, 1, 30, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (3500000.00, 30, 0, 3615000.00, 0, 30, NULL, 1, 31, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (80000.00, 30, 0, 91000.00, 0, 30, NULL, 1, 32, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (450000.00, 25, 0, 471000.00, 0, 25, NULL, 1, 33, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (100000.00, 35, 0, 113000.00, 0, 35, NULL, 1, 34, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (250000.00, 20, 0, 264000.00, 0, 20, NULL, 1, 35, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (30000.00, 30, 0, 38000.00, 0, 30, NULL, 1, 36, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (40000.00, 30, 0, 46000.00, 0, 30, NULL, 1, 37, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 25, 0, 107000.00, 0, 25, NULL, 1, 38, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (950000.00, 15, 0, 100000.00, 0, 15, NULL, 1, 39, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (54000.00, 30, 0, 61500.00, 0, 30, NULL, 1, 40, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (29000.00, 40, 0, 32000.00, 0, 40, NULL, 1, 41, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (43000.00, 35, 0, 45000.00, 0, 35, NULL, 1, 42, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (59000.00, 30, 0, 62000.00, 0, 30, NULL, 1, 43, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (4800000.00, 10, 0, 4990000.00, 0, 10, NULL, 1, 44, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (174000.00, 30, 0, 180000.00, 0, 30, NULL, 1, 45, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (620000.00, 10, 0, 633000.00, 0, 10, NULL, 1, 46, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 10, 0, 138000.00, 0, 10, NULL, 1, 47, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 10, 0, 103000.00, 0, 10, NULL, 1, 48, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (33000.00, 10, 0, 40000.00, 0, 10, NULL, 1, 49, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (7400000.00, 10, 0, 7540000.00, 0, 10, NULL, 1, 50, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (52000.00, 20, 0, 56000.00, 0, 20, NULL, 1, 51, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (43000.00, 25, 0, 48000.00, 0, 25, NULL, 1, 52, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (48000.00, 25, 0, 52000.00, 0, 25, NULL, 1, 53, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (19840.00, 20, 0, 33000.00, 0, 20, NULL, 1, 54, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (29000.00, 60, 0, 34000.00, 0, 60, NULL, 1, 55, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (31000.00, 30, 0, 37000.00, 0, 30, NULL, 1, 56, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (38000.00, 20, 0, 43000.00, 0, 20, NULL, 1, 57, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (53000.00, 15, 0, 58000.00, 0, 15, NULL, 1, 58, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (48000.00, 60, 0, 52000.00, 0, 60, NULL, 1, 59, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (37000.00, 20, 0, 41000.00, 0, 20, NULL, 1, 60, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (23000.00, 40, 0, 28500.00, 0, 40, NULL, 1, 61, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 29000.00, 0, 40, NULL, 1, 62, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 63, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 64, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 65, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27500.00, 0, 40, NULL, 1, 66, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 28000.00, 0, 40, NULL, 1, 67, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 29000.00, 0, 40, NULL, 1, 68, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 28500.00, 0, 40, NULL, 1, 69, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (24000.00, 40, 0, 27000.00, 0, 40, NULL, 1, 70, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (45000.00, 50, 0, 50000.00, 0, 50, NULL, 1, 71, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 30, 0, 133000.00, 0, 30, NULL, 1, 72, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (116000.00, 40, 0, 124000.00, 0, 40, NULL, 1, 73, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (140000.00, 45, 0, 155000.00, 0, 45, NULL, 1, 74, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (120000.00, 55, 0, 133000.00, 0, 55, NULL, 1, 75, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (160000.00, 55, 0, 175000.00, 0, 55, NULL, 1, 76, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (130000.00, 40, 0, 153000.00, 0, 40, NULL, 1, 77, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (99000.00, 30, 0, 109000.00, 0, 30, NULL, 1, 78, 14);
INSERT INTO CTSP (DonGiaNhap, SoLuongNhap, SoLuongLoi, DonGiaXuat, DaBan, SLConLai, GhiChu, TinhTrang, idSP, idNH) VALUES (132000.00, 40, 0, 148000.00, 0, 40, NULL, 1, 79, 14);


insert into HOADON (NgayHD, SLSP, ThanhTien, GiamGia, ThanhToan, GhiChu, idLKH, idKH, idKM, idND, idPT) values ('11/2/2022', 9, 0, 0, 0, '', 1, 25, 1, 20, 3);

select * from HOADON

UPDATE HOADON
SET NgayHD = '2022-12-30'
WHERE idHD >= 60 AND idHD <= 62

select * from NGUOIDUNG
select * from PTTHANHTOAN
insert into HOADON (NgayHD, SLSP, ThanhTien, GiamGia, ThanhToan, GhiChu, idLKH, idKH, idKM, idND, idPT) values ('12/1/2023', 0, 0, 0, 0, N'', null, null, null, {idND}, {idPT})

DECLARE @currentDate DATE = '2023-12-01';
DECLARE @endDate DATE = '2023-12-31';

-- Tạo vòng lặp để sinh các câu lệnh insert
WHILE @currentDate <= @endDate
BEGIN
	IF (DAY(@currentDate) % 7 = 0)
	BEGIN
    -- Sinh câu lệnh insert với NgayHD tăng tuyến tính và giá trị ngẫu nhiên cho idND và idPT
    INSERT INTO HOADON (NgayHD, SLSP, ThanhTien, GiamGia, ThanhToan, GhiChu, idLKH, idKH, idKM, idND, idPT)
    VALUES (
        @currentDate,
        ABS(CHECKSUM(NEWID())) % 4 + 2,
        0,
        0,
        0,
        N'',
        NULL,
        NULL,
        NULL,
        ABS(CHECKSUM(NEWID())) % 3 + 1,
        ABS(CHECKSUM(NEWID())) % 3 + 2
    );

    -- Tăng ngày lên 1
	END
    SET @currentDate = DATEADD(day, 1, @currentDate);
END;

SELECT * FROM CTHD

DELETE FROM CTHD
WHERE idCTHD >= 375

GO
CREATE OR ALTER TRIGGER TRG_THEMCTHD ON CTHD
FOR INSERT
AS 
BEGIN
	DECLARE @DONGIA money,
			@SOLUONGCTSP int,
			@IDHD int,
			@IDCTSP int,
			@IDCTHD int
	SELECT @SOLUONGCTSP = SoLuong, @IDHD = idHD, @IDCTSP = idCTSP, @IDCTHD = idCTHD
	FROM inserted

	SELECT @DONGIA = DonGiaNhap 
	FROM CTSP
	WHERE idCTSP = @IDCTSP

	UPDATE CTHD
	SET DonGia = @DONGIA,ThanhTien = @DONGIA * @SOLUONGCTSP
	WHERE idCTHD = @IDCTHD

	UPDATE HOADON
	SET ThanhTien += (@DONGIA * @SOLUONGCTSP), SLSP += 1
	WHERE idHD = @IDHD

	UPDATE HOADON
	SET ThanhToan = ThanhTien
	WHERE idHD = @IDHD
END



DECLARE @IDSTART int = 183 ;
DECLARE @IDEND int = 238;

-- Tạo vòng lặp để sinh các câu lệnh insert
WHILE @IDSTART <= @IDEND
BEGIN
	IF (@IDSTART % 1 = 0)
	BEGIN
    -- Sinh câu lệnh insert với NgayHD tăng tuyến tính và giá trị ngẫu nhiên cho idND và idPT
    INSERT INTO CTHD (idHD, idCTSP, SoLuong, ThanhTien, DonGia)
    VALUES (
        @IDSTART,
        ABS(CHECKSUM(NEWID())) % 79 + 800,
        ABS(CHECKSUM(NEWID())) % 4 + 2,
		0,
		0
    );

    -- Tăng ngày lên 1
	END
    SET @IDSTART += 1;
END;

update HOADON
set NgayHD = '2004-1-3' 
where idHD>=244