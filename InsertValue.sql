use QLKaraokeNice

delete from ChiTietDichVu
delete from PhieuDatPhong
delete from HoaDon
delete from ChiTietHoaDon
delete from KhachHang
delete from DichVu
delete from DangNhap
delete from PhieuCaTruc
delete from CaTruc
delete from NhanVien
delete from Phong


select * from DangNhap
INSERT INTO DangNhap
VALUES
	('QL001', 1234, N'Nhân viên quản lý'),
	('NV001', 1234, N'Nhân viên kế toán'),
	('NV002', 1234, N'Nhân viên tiếp tân');
go

select * from DichVu
INSERT INTO DichVu
VALUES
	('DV001', N'Bia Sài Gòn Lager lon', 100, 12300),
	('DV002', N'Bia Budweiser lon', 100, 18000),
	('DV003', N'Bia Sapporo lon', 80, 19000),
	('DV004', N'Bia Heineken Silver lon', 120, 16300),
	('DV005', N'Bia Tiger Bạc lon', 100, 19200),
	('DV006', N'Bia Tiger Platinum Wheat Lager lon', 110, 21000),
	('DV007', N'Rượu soju chai', 100, 64000),
	('DV008', N'Rượu nhẹ cocktail có ga lon', 130, 18500),
	('DV009', N'Nước tăng lực Sting chai', 200, 10800),
	('DV010', N'Nước ngọt Coca Cola chai', 150, 5500),
	('DV011', N'Nước tăng lực Redbull lon', 200, 10000),
	('DV012', N'Nước tinh khiết Jovita', 200, 4000),
	('DV013', N'Dĩa trái cây', 50, 100000),
	('DV014', N'Khăn giấy ướt', 500, 1000),
	('DV015', N'Trang trí tiệc sinh nhật', 1, 200000);
go

select * from KhachHang
INSERT INTO KhachHang
VALUES
	('KH000001', N'Lê Minh Châu', 31, N'Nữ', '0390123456', N'Chưa thanh toán'),
	('KH000002', N'Vũ Hồng Trang', 27, N'Nữ', '0745678901', N'Đã thanh toán'),
	('KH000003', N'Phạm Thanh Dũng', 29, N'Nam', '0312345678', N'Chưa thanh toán'),
	('KH000004', N'Hoàng Thị Lan', 23, N'Nữ', '0967890123', N'Đã thanh toán'),
	('KH000005', N'Đặng Văn Hưng', 22, N'Nam', '0378901234', N'Chưa thanh toán'),
	('KH000006', N'Nguyễn Thị Mai', 35, N'Nữ', '0823456789', N'Chưa thanh toán'),
	('KH000007', N'Lê Quang Việt', 28, N'Nam', '0389012345', N'Chưa thanh toán'),
	('KH000008', N'Trần Đình Linh', 26, N'Nữ', '0856789012', N'Chưa thanh toán'),
	('KH000009', N'Hoàng Hải Nam', 30, N'Nam', '0834567890', N'Đã thanh toán'),
	('KH000010', N'Trương Thị Hương', 32, N'Nữ', '0901234567', N'Chưa thanh toán'),
	('KH000011', N'Trần Quang Hưng', 32, N'Nam', '0901234960', N'Chưa thanh toán');
go

select * from CaTruc
INSERT INTO CaTruc
VALUES
	('CT001', N'8h sáng đến 13h chiều'),
	('CT002', N'13h chiều đến 18h tối'),
	('CT003', N'18h tối đến 0h sáng');
go

select * from NhanVien
INSERT INTO NhanVien
VALUES
	('QL001', N'Đặng Lê Hữu Tiến', '0350123456', 20, N'Nhân viên quản lý', '30000', N'Nam'),
	('NV001', N'Đặng Duy Phương', '0798765432', 20, N'Nhân viên kế toán', '27500', N'Nam'),
	('NV002', N'Đinh Quốc Khánh', '0833333333', 20, N'Nhân viên tiếp tân', '26000', N'Nam'),
	('NV003', N'Hoàng Thị Lan', '0712345678', 23, N'Nhân viên phục vụ', '26000', N'Nữ'),
	('NV004', N'Đặng Văn Hưng', '0909876543', 22, N'Nhân viên kỹ thuật', '27500', N'Nam'),
	('NV005', N'Nguyễn Thị Mai', '0887654321', 35, N'Nhân viên tiếp tân', '26000', N'Nữ'),
	('NV006', N'Lê Quang Việt', '0323456789', 28, N'Nhân viên phục vụ', '26000', N'Nam'),
	('NV007', N'Trần Đình Linh', '0701234567', 26, N'Nhân viên phục vụ', '27500', N'Nữ'),
	('NV008', N'Hoàng Hải Nam', '0832109876', 30, N'Nhân viên kỹ thuật', '27500', N'Nam'),
	('NV009', N'Trương Thị Hương', '0910987654', 32, N'Nhân viên tiếp tân', '26000', N'Nữ');
go

select * from PhieuCaTruc
INSERT INTO PhieuCaTruc
VALUES
	('CT001', 'NV001', '2023-10-01'),
    ('CT001', 'NV001', '2023-10-02'),
    ('CT001', 'NV002', '2023-10-03'),
    ('CT002', 'NV003', '2023-10-04'),
    ('CT002', 'NV003', '2023-10-05'),
    ('CT002', 'NV004', '2023-10-06'),
    ('CT003', 'NV005', '2023-10-07'),
    ('CT003', 'NV006', '2023-10-08'),
    ('CT003', 'NV007', '2023-10-09'),
    ('CT003', 'NV008', '2023-10-10');
go

select * from Phong
INSERT INTO Phong
VALUES
    ('P001', N'Phòng 001', N'Standard (1-7 khách)', N'2 Micro, 2 Sofa, 2 Bàn, 3 Loa, 1 Máy lạnh', N'Đã đặt', N'', 25000),
    ('P002', N'Phòng 002', N'Standard (1-7 khách)', N'2 Micro, 2 Sofa, 2 Bàn, 3 Loa, 1 Máy lạnh', N'Đã đặt', N'', 25000),
    ('P003', N'Phòng 003', N'Standard (1-7 khách)', N'2 Micro, 2 Sofa, 2 Bàn, 3 Loa, 1 Máy lạnh', N'Trống', N'', 25000),
    ('P004', N'Phòng 004', N'Superior (7-15 khách)', N'2 Micro, 3 Sofa, 3 Bàn, 4 Loa, 2 Máy lạnh', N'Trống', N'', 26000),
    ('P101', N'Phòng 101', N'Superior (7-15 khách)', N'2 Micro, 3 Sofa, 3 Bàn, 4 Loa, 2 Máy lạnh', N'Đã đặt', N'', 26000),
    ('P102', N'Phòng 102', N'Superior (7-15 khách)', N'2 Micro, 3 Sofa, 3 Bàn, 4 Loa, 2 Máy lạnh', N'Bảo trì', N'', 26000),
    ('P103', N'Phòng 103', N'Deluxe (trên 15 khách)', N'2 Micro, 4 Sofa, 4 Bàn, 5 Loa, 3 Máy lạnh', N'Đã đặt', N'', 27000),
    ('P104', N'Phòng 104', N'Deluxe (trên 15 khách)', N'2 Micro, 4 Sofa, 4 Bàn, 5 Loa, 3 Máy lạnh', N'Trống', N'', 27000),
    ('P201', N'Phòng 201', N'Deluxe (trên 15 khách)', N'2 Micro, 4 Sofa, 4 Bàn, 5 Loa, 3 Máy lạnh', N'Trống', N'', 27000),
    ('P202', N'Phòng 202', N'Standard (1-7 khách)', N'2 Micro, 2 Sofa, 2 Bàn, 3 Loa, 1 Máy lạnh', N'Đã đặt', N'', 25000),
    ('P203', N'Phòng 203', N'Standard (1-7 khách)', N'2 Micro, 2 Sofa, 2 Bàn, 3 Loa, 1 Máy lạnh', N'Đã đặt', N'', 25000),
    ('P204', N'Phòng 204', N'Standard (1-7 khách)', N'2 Micro, 2 Sofa, 2 Bàn, 3 Loa, 1 Máy lạnh', N'Trống', N'', 25000),
    ('P301', N'Phòng 301', N'Superior (7-15 khách)', N'2 Micro, 3 Sofa, 3 Bàn, 4 Loa, 2 Máy lạnh', N'Trống', N'', 26000),
    ('P302', N'Phòng 302', N'Superior (7-15 khách)', N'2 Micro, 3 Sofa, 3 Bàn, 4 Loa, 2 Máy lạnh', N'Bảo trì', N'', 26000),
    ('P303', N'Phòng 303', N'Superior (7-15 khách)', N'2 Micro, 3 Sofa, 3 Bàn, 4 Loa, 2 Máy lạnh', N'Trống', N'', 26000);
go

select * from ChiTietHoaDon
INSERT INTO ChiTietHoaDon
VALUES
	('HD000001', 'P001', '2023-10-01 21:05:00', '2023-10-01 22:10:00', 1),
	('HD000002', 'P001', '2023-10-02 10:05:00', '2023-10-02 12:22:00', 1),
	('HD000003', 'P002', '2023-10-04 15:00:00', '2023-10-04 16:40:00', 1),
	('HD000004', 'P101', '2023-10-05 18:30:00', '2023-10-05 20:00:00', 1),
	('HD000005', 'P202', NULL, NULL, 1),
	('HD000006', 'P101', NULL, NULL, 1),
	('HD000007', 'P002', NULL, NULL, 1),
	('HD000008', 'P203', NULL, NULL, 1),
	('HD000009', 'P103', NULL, NULL, 1),
	('HD000010', 'P001', NULL, NULL, 1);
go
--update ChiTietHoaDon 
--set ThoiGianThue = '2023/10/05 18:30:00', ThoiGianKetThuc = '2023/10/05 18:30:00' 
--where IDHoaDon = 'HD000005' and IDPhong = 'P202'

select * from HoaDon
INSERT INTO HoaDon
VALUES
	('HD000001', 'KH000002', 'QL001', 5),
    ('HD000002', 'KH000004', 'NV003', 0),
    ('HD000003', 'KH000006', 'NV005', 10),
    ('HD000004', 'KH000009', 'NV009', 0),
    ('HD000005', 'KH000001', 'QL001', 5),
    ('HD000006', 'KH000003', 'NV003', 0),
    ('HD000007', 'KH000004', 'NV005', 0),
    ('HD000008', 'KH000005', 'NV009', 0),
    ('HD000009', 'KH000007', 'QL001', 0),
    ('HD000010', 'KH000008', 'NV003', 0);
go

select * from PhieuDatPhong
INSERT INTO PhieuDatPhong
VALUES
	('HD000001', 'P001', 'KH000002', 'QL001', '2023-10-01 21:05:00', 4, ''),
    ('HD000002', 'P001', 'KH000004', 'NV003', '2023-10-02 10:05:00', 4, ''),
    ('HD000003', 'P002', 'KH000006', 'NV005', '2023-10-03 15:30:00', 2, ''),
    ('HD000004', 'P101', 'KH000009', 'NV009', '2023-10-04 19:00:00', 3, ''),
    ('HD000005', 'P202', 'KH000001', 'QL001', '2023-10-05 08:00:00', 2, ''),
    ('HD000006', 'P101', 'KH000003', 'NV003', '2023-10-06 14:15:00', 1, ''),
    ('HD000007', 'P002', 'KH000004', 'NV005', '2023-10-07 10:30:00', 3, ''),
    ('HD000008', 'P203', 'KH000005', 'NV009', '2023-10-08 17:45:00', 2, ''),
    ('HD000009', 'P103', 'KH000007', 'QL001', '2023-10-09 22:20:00', 1, ''),
    ('HD000010', 'P001', 'KH000008', 'NV003', '2023-10-10 08:00:00', 2, '');
go
/*
delete from PhieuDatPhong where IDHoaDon = 'HD000011'
delete from HoaDon where IDHoaDon = 'HD000011'
delete from ChiTietHoaDon where IDHoaDon = 'HD000011'
update PhieuDatPhong set ThoiGianDat = '2023-10-01 21:05:00', SoLuongKhach = 4, GhiChu= '' where IDHoaDon='HD000011'
*/
select * from ChiTietDichVu
INSERT INTO ChiTietDichVu
VALUES
	('DV001','HD000001','KH000002',10),
	('DV002','HD000001','KH000002',6),
	('DV009','HD000001','KH000002',7),
	('DV002','HD000002','KH000004',8),
	('DV009','HD000002','KH000004',9),
	('DV010','HD000002','KH000004',4),
	('DV002','HD000003','KH000006',12),
	('DV005','HD000004','KH000009',15),
	('DV006','HD000004','KH000009',12),
	('DV007','HD000004','KH000009',17),
	('DV001','HD000005','KH000001',20),
	('DV008','HD000006','KH000003',14),
	('DV009','HD000007','KH000004',5),
	('DV001','HD000007','KH000004',20),
	('DV007','HD000009','KH000007',20);
go

/*
update ChiTietDichVu  
set [SoLuong] = 5 
where IDDichVu = 'DV001' and IDKhachHang = 'KH000004' and IDHoaDon = 'HD000007'
*/
select *
from ChiTietDichVu ct inner join DichVu dv on ct.IDDichVu = dv.IDDichVu
inner join KhachHang k on ct.IDKhachHang = k.IDKhachHang
inner join PhieuDatPhong dp on k.IDKhachHang = dp.IDKhachHang

SELECT *
FROM ChiTietDichVu ct_dv
INNER JOIN DichVu dv ON ct_dv.IDDichVu = dv.IDDichVu
INNER JOIN HoaDon hd ON ct_dv.IDHoaDon = hd.IDHoaDon
INNER JOIN KhachHang kh on ct_dv.IDKhachHang = kh.IDKhachHang
INNER JOIN ChiTietHoaDon ct_hd ON hd.IDHoaDon = ct_hd.IDHoaDon
INNER JOIN Phong p ON ct_hd.IDPhong = p.IDPhong
WHERE p.TinhTrang = N'Đã đặt' and kh.TinhTrang = N'Chưa thanh toán' and p.TenPhong= 'Phòng 202';

SELECT *
FROM ChiTietDichVu ct
INNER JOIN DichVu dv ON ct.IDDichVu = dv.IDDichVu
INNER JOIN KhachHang kh on ct.IDKhachHang = kh.IDKhachHang
WHERE kh.TinhTrang = N'Chưa thanh toán';

SELECT *
FROM HoaDon hd
INNER JOIN PhieuDatPhong pdp ON hd.IDHoaDon = pdp.IDHoaDon
INNER JOIN KhachHang kh ON hd.IDKhachHang = kh.IDKhachHang
INNER JOIN ChiTietHoaDon ct_hd ON hd.IDHoaDon = ct_hd.IDHoaDon 
INNER JOIN Phong p ON ct_hd.IDPhong = p.IDPhong
INNER JOIN ChiTietDichVu ct_dv ON ct_dv.IDHoaDon = hd.IDHoaDon
INNER JOIN DichVu dv ON ct_dv.IDDichVu = dv.IDDichVu
WHERE ct_hd.ThoiGianThue is not null and ct_hd.ThoiGianKetThuc is not null

SELECT *
FROM HoaDon hd
INNER JOIN KhachHang kh ON hd.IDKhachHang = kh.IDKhachHang
INNER JOIN ChiTietHoaDon ct_hd ON hd.IDHoaDon = ct_hd.IDHoaDon 
WHERE ct_hd.ThoiGianThue is null and ct_hd.ThoiGianKetThuc is null
and kh.TinhTrang = N'Chưa thanh toán' and kh.IDKhachHang = N'KH000007'

SELECT *
FROM PhieuDatPhong pdp
INNER JOIN KhachHang kh ON pdp.IDKhachHang = kh.IDKhachHang
INNER JOIN Phong p ON pdp.IDPhong = p.IDPhong
WHERE kh.TinhTrang = N'Chưa thanh toán'

SELECT *
FROM PhieuCaTruc pct
INNER JOIN CaTruc ct ON pct.IDCaTruc = ct.IDCaTruc
INNER JOIN NhanVien nv ON pct.IDNhanVien = nv.IDNhanVien


SELECT 
    chd.IDHoaDon,
    chd.IDPhong,
    chd.ThoiGianThue,
    chd.ThoiGianKetThuc,
    DATEDIFF(MINUTE, chd.ThoiGianThue, chd.ThoiGianKetThuc) * p.GiaPhongMoiGioTheoCa AS ThanhTien
FROM ChiTietHoaDon chd
INNER JOIN Phong p ON chd.IDPhong = p.IDPhong
WHERE chd.ThoiGianThue IS NOT NULL AND chd.ThoiGianKetThuc IS NOT NULL

SELECT
    ct_hd.IDHoaDon,
    ct_hd.IDPhong,
	p.TenPhong,
	p.ThietBi,
	p.TinhTrang,
	p.GhiChu,
    ct_hd.ThoiGianThue,
    ct_hd.ThoiGianKetThuc,
    p.GiaPhongMoiGioTheoCa,
    ((DATEDIFF(MINUTE, ct_hd.ThoiGianThue, ct_hd.ThoiGianKetThuc) / 60.0) * p.GiaPhongMoiGioTheoCa) as ThanhTien
FROM Phong p INNER JOIN ChiTietHoaDon ct_hd ON p.IDPhong = ct_hd.IDPhong
WHERE ThoiGianThue IS NOT NULL AND ThoiGianKetThuc IS NOT NULL AND ct_hd.IDHoaDon = 'HD000001';

SELECT ct_hd.IDHoaDon, ct_dv.IDDichVu, dv.TenDV, ct_dv.SoLuong, dv.Gia, (ct_dv.SoLuong * dv.Gia) AS ThanhTien
FROM ChiTietDichVu ct_dv INNER JOIN DichVu dv ON ct_dv.IDDichVu = dv.IDDichVu
INNER JOIN ChiTietHoaDon ct_hd ON ct_dv.IDHoaDon = ct_hd.IDHoaDon
WHERE ThoiGianThue IS NOT NULL AND ThoiGianKetThuc IS NOT NULL AND ct_hd.IDHoaDon = 'HD000001';

SELECT ct_dv.IDDichVu, dv.TenDV, SUM(ct_dv.SoLuong) AS TongSoLuong, dv.Gia, SUM(ct_dv.SoLuong * dv.Gia) AS ThanhTien
FROM ChiTietDichVu ct_dv
INNER JOIN DichVu dv ON ct_dv.IDDichVu = dv.IDDichVu
INNER JOIN ChiTietHoaDon ct_hd ON ct_dv.IDHoaDon = ct_hd.IDHoaDon
WHERE ThoiGianThue IS NOT NULL AND ThoiGianKetThuc IS NOT NULL
GROUP BY ct_dv.IDDichVu, dv.TenDV, dv.Gia;

