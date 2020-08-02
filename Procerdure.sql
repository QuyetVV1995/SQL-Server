USE Quan_ly_sinh_vien
GO

-- 1. In danh sach cac sinh vien cua 1 lop hoc
-- phai co ma lop
-- tim tat ca sinh vien dua theo ma lop

CREATE PROC UP_List_SV_from_lop
	@malop VARCHAR(10)
AS
BEGIN
	--SET @malop = 'TH2002/01'
	SELECT dbo.Sinh_vien.* FROM dbo.Sinh_vien
	LEFT JOIN dbo.Lop ON Lop.Ma_Lop = Sinh_vien.Ma_Lop
END

EXEC dbo.UP_List_SV_from_lop @malop = 'TH2002/01' -- varchar(10)
GO

-- 2. nhap vao 1 khoa, in ra danh sach cac sinh vien thuoc khoa nay

CREATE PROC UF_list_SV_in_Khoa
	@makhoa VARCHAR(10)
AS
BEGIN

--DECLARE @masv VARCHAR(10)
--DECLARE @makhoa VARCHAR(10)
--SET @masv = '0212002'
--SET @makhoa = 'CNTT'

SELECT dbo.Sinh_vien.* FROM dbo.Sinh_vien
LEFT JOIN dbo.Lop ON Lop.Ma_Lop = Sinh_vien.Ma_Lop
LEFT JOIN dbo.Khoa ON Khoa.Ma_Khoa = Lop.Ma_Khoa
END
GO

EXEC dbo.UF_list_SV_in_Khoa @makhoa = 'VL' -- varchar(10)
GO

