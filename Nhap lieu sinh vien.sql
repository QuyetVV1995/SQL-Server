USE Quan_ly_sinh_vien
GO
-- nhap lieu cho KHoa
INSERT INTO dbo.Khoa
(
    Ma_Khoa,
    Ten_Khoa,
    Nam_Thanh_Lap
)
VALUES
(   'CNTT',  -- Ma_Khoa - varchar(10)
    N'Cong nghe thong tin', -- Ten_Khoa - nvarchar(30)
    0    -- Nam_Thanh_Lap - int
    )
	GO
INSERT INTO dbo.Khoa
(
    Ma_Khoa,
    Ten_Khoa,
    Nam_Thanh_Lap
)
VALUES
(   'VL',  -- Ma_Khoa - varchar(10)
    N'Vat ly', -- Ten_Khoa - nvarchar(30)
    0    -- Nam_Thanh_Lap - int
    )
GO
-- Nhap lieu khoa hoc
INSERT INTO dbo.Khoa_hoc
(
    Ma_Khoa_Hoc,
    Nam_bat_dau,
    Nam_ket_thuc
)VALUES
(   'K2002', -- Ma_Khoa_Hoc - varchar(10)
    2002,  -- Nam_bat_dau - int
    2006   -- Nam_ket_thuc - int
    )
GO
-- nhap lieu khoa hoc
INSERT INTO dbo.Khoa_hoc
(
    Ma_Khoa_Hoc,
    Nam_bat_dau,
    Nam_ket_thuc
)VALUES
(   'K2003', -- Ma_Khoa_Hoc - varchar(10)
    2003,  -- Nam_bat_dau - int
    2007   -- Nam_ket_thuc - int
    )
GO
INSERT INTO dbo.Khoa_hoc
(
    Ma_Khoa_Hoc,
    Nam_bat_dau,
    Nam_ket_thuc
)VALUES
(   'K2004', -- Ma_Khoa_Hoc - varchar(10)
    2004,  -- Nam_bat_dau - int
    2008   -- Nam_ket_thuc - int
    )
GO

-- nhap lieu cho bang CHuong trinh hoc
INSERT INTO dbo.Chuong_Trinh_Hoc
(
    Ma_CT,
    Ten_CT
)VALUES
(   'CQ', -- Ma_CT - varchar(10)
    'Chinh quy'  -- Ten_CT - varchar(20)
    )
GO

-- nhap lieu cho bang Lop
INSERT INTO dbo.Lop
(
    Ma_Lop,
    Ma_Khoa,
    Ma_Khoa_Hoc,
    Ma_CT,
    STT
)
VALUES
(   'TH2002/01', -- Ma_Lop - varchar(10)
    'CNTT', -- Ma_Khoa - varchar(10)
    'K2002', -- Ma_Khoa_Hoc - varchar(10)
    'CQ', -- Ma_CT - varchar(10)
    1   -- STT - int
    )
GO
INSERT INTO dbo.Lop
(
    Ma_Lop,
    Ma_Khoa,
    Ma_Khoa_Hoc,
    Ma_CT,
    STT
)
VALUES
(   'TH2002/02', -- Ma_Lop - varchar(10)
    'CNTT', -- Ma_Khoa - varchar(10)
    'K2002', -- Ma_Khoa_Hoc - varchar(10)
    'CQ', -- Ma_CT - varchar(10)
    2   -- STT - int
    )
GO
INSERT INTO dbo.Lop
(
    Ma_Lop,
    Ma_Khoa,
    Ma_Khoa_Hoc,
    Ma_CT,
    STT
)
VALUES
(   'TH2003/01', -- Ma_Lop - varchar(10)
    'VL', -- Ma_Khoa - varchar(10)
    'K2003', -- Ma_Khoa_Hoc - varchar(10)
    'CQ', -- Ma_CT - varchar(10)
    3   -- STT - int
    )
GO
-- nhap lieu cho sinh vien
INSERT INTO dbo.Sinh_vien
(
    MaSV,
    Ho_ten,
    Nam_Sinh,
    Dan_toc,
    Ma_Lop
)
VALUES
(   '0212001', -- MaSV - varchar(10)
    'Nguyen Vinh An', -- Ho_ten - varchar(100)
    1984,  -- Nam_Sinh - int
    'Kinh', -- Dan_toc - varchar(20)
    'TH2002/01'  -- Ma_Lop - varchar(10)
    )
GO
INSERT INTO dbo.Sinh_vien
(
    MaSV,
    Ho_ten,
    Nam_Sinh,
    Dan_toc,
    Ma_Lop
)
VALUES
(   '0212002', -- MaSV - varchar(10)
    'Nguyen thanh binh', -- Ho_ten - varchar(100)
    1985,  -- Nam_Sinh - int
    'Kinh', -- Dan_toc - varchar(20)
    'TH2002/01'  -- Ma_Lop - varchar(10)
    )
GO
INSERT INTO dbo.Sinh_vien
(
    MaSV,
    Ho_ten,
    Nam_Sinh,
    Dan_toc,
    Ma_Lop
)
VALUES
(   '0212003', -- MaSV - varchar(10)
    'Nguyen thanh cuong', -- Ho_ten - varchar(100)
    1984,  -- Nam_Sinh - int
    'Kinh', -- Dan_toc - varchar(20)
    'TH2002/02'  -- Ma_Lop - varchar(10)
    )
GO
INSERT INTO dbo.Sinh_vien
(
    MaSV,
    Ho_ten,
    Nam_Sinh,
    Dan_toc,
    Ma_Lop
)
VALUES
(   '0212004', -- MaSV - varchar(10)
    'Nguyen quoc duy', -- Ho_ten - varchar(100)
    1983,  -- Nam_Sinh - int
    'Kinh', -- Dan_toc - varchar(20)
    'TH2002/01'  -- Ma_Lop - varchar(10)
    )
GO
INSERT INTO dbo.Sinh_vien
(
    MaSV,
    Ho_ten,
    Nam_Sinh,
    Dan_toc,
    Ma_Lop
)
VALUES
(   '0311001', -- MaSV - varchar(10)
    'pham tuan anh', -- Ho_ten - varchar(100)
    1985,  -- Nam_Sinh - int
    'Kinh', -- Dan_toc - varchar(20)
    'TH2003/01'  -- Ma_Lop - varchar(10)
    )
GO
INSERT INTO dbo.Sinh_vien
(
    MaSV,
    Ho_ten,
    Nam_Sinh,
    Dan_toc,
    Ma_Lop
)
VALUES
(   '0311002', -- MaSV - varchar(10)
    'Huynh Thanh Sang', -- Ho_ten - varchar(100)
    1984,  -- Nam_Sinh - int
    'Kinh', -- Dan_toc - varchar(20)
    'TH2003/01'  -- Ma_Lop - varchar(10)
    )
GO

-- nhap lieu cho mon hoc
INSERT INTO dbo.Mon_hoc
(
    MaMH,
    Ma_Khoa,
    TenMH
)
VALUES
(   'THT01', -- MaMH - varchar(10)
    'CNTT', -- Ma_Khoa - varchar(10)
    N'Toan cao cap A1' -- TenMH - nvarchar(100)
    )
GO
INSERT INTO dbo.Mon_hoc
(
    MaMH,
    Ma_Khoa,
    TenMH
)
VALUES
(   'VLT01', -- MaMH - varchar(10)
    'VL', -- Ma_Khoa - varchar(10)
    N'Toan cao cap A1' -- TenMH - nvarchar(100)
    )
GO
INSERT INTO dbo.Mon_hoc
(
    MaMH,
    Ma_Khoa,
    TenMH
)
VALUES
(   'THT02', -- MaMH - varchar(10)
    'CNTT', -- Ma_Khoa - varchar(10)
    N'Toan roi rac' -- TenMH - nvarchar(100)
    )
GO
INSERT INTO dbo.Mon_hoc
(
    MaMH,
    Ma_Khoa,
    TenMH
)
VALUES
(   'THCS01', -- MaMH - varchar(10)
    'CNTT', -- Ma_Khoa - varchar(10)
    N'Cau truc du lieu 1' -- TenMH - nvarchar(100)
    )
GO
INSERT INTO dbo.Mon_hoc
(
    MaMH,
    Ma_Khoa,
    TenMH
)
VALUES
(   'THCS02', -- MaMH - varchar(10)
    'CNTT', -- Ma_Khoa - varchar(10)
    N'He dieu hanh' -- TenMH - nvarchar(100)
    )
GO

-- Nhập liệu cho bảng Kết quả
Insert into Ket_Qua values('0212001', 'THT01', 1,4)
go
Insert into Ket_Qua values('0212001', 'THT01', 2,7)
go
Insert into Ket_Qua values('0212002', 'THT01', 1,8)
go
Insert into Ket_Qua values('0212003', 'THT01', 1,6)
go
Insert into Ket_Qua values('0212004', 'THT01', 1,9)
go
Insert into Ket_Qua values('0212001', 'THT02', 1,8)
go
Insert into Ket_Qua values('0212002', 'THT02', 1,5.5)
go
Insert into Ket_Qua values('0212003', 'THT02', 1,4)
go
Insert into Ket_Qua values('0212003', 'THT02', 2,6)
go
Insert into Ket_Qua values('0212001', 'THCS01', 1,6.5)
go
Insert into Ket_Qua values('0212002', 'THCS01', 1,4)
go
Insert into Ket_Qua values('0212003', 'THCS01', 1,7)
GO

-- Nhập liệu cho bảng Giảng Khoa
Insert into Giang_Khoa values('CQ', 'CNTT', 'THT01',2003, 1, 60, 30, 5)
go
Insert into Giang_Khoa values('CQ', 'CNTT', 'THT02',2003, 2, 45, 30, 4)
go
Insert into Giang_Khoa values('CQ', 'CNTT', 'THCS01',2004, 1, 45, 30, 4)
GO

