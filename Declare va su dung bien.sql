USE HowKteam
GO

-- tìm ra mã giáo viên có lương cao nhất
SELECT MAGV FROM dbo.GIAOVIEN WHERE LUONG = (SELECT MIN(LUONG) FROM dbo.GIAOVIEN)

-- cách 1
-- lấy ra tuổi của giáo viên với MaGV = 001
SELECT YEAR(GETDATE()) - YEAR(NGSINH) FROM dbo.GIAOVIEN
WHERE MAGV = (SELECT MAGV FROM dbo.GIAOVIEN WHERE LUONG = (SELECT MIN(LUONG) FROM dbo.GIAOVIEN))

-- tạo ra 1 biến kiểu char lưu mã giáo viên lương thấp nhất
DECLARE @MinsalaryMaGV CHAR(10)

SELECT @MinsalaryMaGV = MaGV FROM dbo.GIAOVIEN WHERE LUONG = (SELECT MIN(LUONG) FROM dbo.GIAOVIEN)

-- lấy ra tuổi của giáo viên với MaGV = 001
SELECT YEAR(GETDATE()) - YEAR(NGSINH) FROM dbo.GIAOVIEN
WHERE MAGV = @MinsalaryMaGV

-----------------------------
DECLARE @i INT

DECLARE @j INT = 0

-- set dữ liệu cho biến
SET @i = @i + 1

-- set thông qua câu select
DECLARE @Maxluong INT

SELECT @Maxluong = MAX(LUONG) FROM dbo.GIAOVIEN

-- Xuất ra tên của giáo viên có lương thấp nhất
DECLARE @minLuong INT
DECLARE @tenGV NVARCHAR(100)

SELECT @minLuong = MIN(LUONG) FROM dbo.GIAOVIEN
SELECT @tenGV = Hoten FROM dbo.GIAOVIEN WHERE LUONG = @minLuong
-- xuat gia trị ra màn hình
PRINT @tenGV