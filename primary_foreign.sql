CREATE DATABASE primary_foreign2
GO

USE primary_foreign
GO

--  điều kiện để tạo khóa ngoại: tham chiếu tới khóa chính, unique not null, cùng kiểu dữ liệu, cùng số lượng trường có sắp xếp
--  Lợi ích: Đảm bảo toàn viện dữ liệu. Không có trường hợp tham chiếu tới dữ liệu không tồn tại

CREATE TABLE boMon(
	maBoMon CHAR(10) PRIMARY KEY,
	tenBoMon NVARCHAR(100) DEFAULT N'Ten bo mon'
)
GO

CREATE TABLE lop(
	maLop CHAR(10) NOT NULL,
	tenLop NVARCHAR(100) DEFAULT N'ten lop'

	PRIMARY KEY(maLop)
)
GO

CREATE TABLE giaoVien(
	maGV CHAR(10) NOT NULL,
	tenGV NVARCHAR(100) DEFAULT N'ten giao vien',
	diachi NVARCHAR(100) DEFAULT N'dia chi giao vien',
	ngaysinh DATE,
	sex BIT,
	maBoMon CHAR(10),
	FOREIGN KEY(maBoMon) REFERENCES dbo.boMon(maBoMon)
)
GO
ALTER TABLE dbo.giaoVien ADD PRIMARY KEY (maGV)


CREATE TABLE hocSinh(
	maHS CHAR(10) PRIMARY KEY,
	tenHS NVARCHAR(100),
	maLop CHAR(10)
)
GO
-- tao khoa ngoai sau tao bang
ALTER TABLE dbo.hocSinh ADD CONSTRAINT FK_HS FOREIGN KEY(maLop) REFERENCES dbo.lop(maLop)
-- huy khoa
ALTER TABLE dbo.hocSinh DROP CONSTRAINT FK_HS

INSERT INTO dbo.boMon
(
    maBoMon,
    tenBoMon
)
VALUES
(   '01', -- maBoMon - char(10)
    N'bo mon 1' -- tenBoMon - nvarchar(100)
    )
INSERT INTO dbo.boMon
(
    maBoMon,
    tenBoMon
)
VALUES
(   '02', -- maBoMon - char(10)
    N'bo mon 2' -- tenBoMon - nvarchar(100)
    )

INSERT dbo.giaoVien
(
    maGV,
    tenGV,
    diachi,
    ngaysinh,
    sex,
    maBoMon
)
VALUES
(   'giaovien1',        -- maGV - char(10)
    N'ten 1',       -- tenGV - nvarchar(100)
    N'dia chi 1',       -- diachi - nvarchar(100)
    GETDATE(), -- ngaysinh - date
    1,      -- sex - bit
    '01'         -- maBoMon - char(10)
    )