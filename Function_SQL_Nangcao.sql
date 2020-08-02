USE Quan_ly_sinh_vien
GO
-- voi 1 ma sinh vien va 1 ma khoa, kiem tra xem sinh vien co thuoc khoa nay khong (Tra ve dung sai)
CREATE FUNCTION  UF_check_SV_In_Khoa(
	 @masv VARCHAR(10),
	 @makhoa VARCHAR(10)
)
RETURNS varchar(5)
AS
BEGIN
DECLARE @ketqua VARCHAR(10);
SET @ketqua = 'false'

IF (EXISTS(
			SELECT * FROM dbo.Sinh_vien
			LEFT JOIN dbo.Lop ON Lop.Ma_Lop = Sinh_vien.Ma_Lop
			LEFT JOIN dbo.Khoa ON Khoa.Ma_Khoa = Lop.Ma_Khoa
			WHERE dbo.Sinh_vien.MaSV = @masv
			AND dbo.Khoa.Ma_Khoa = @makhoa
			)
	)
	SET @ketqua = 'True'
ELSE
	SET @ketqua = 'false'

RETURN @ketqua
END
GO

SELECT dbo.UF_check_SV_In_Khoa('0212003','CNTT')
GO
-- tính điểm thi sau cùng của một sinh viên trong một môn học cụ thể
CREATE FUNCTION UF_Last_Score_Of_Student(
	@masv varchar(10),
	@mamh varchar(10)
)
RETURNS float
AS
BEGIN
	DECLARE @diem FLOAT;
	SET @diem = 0;
	SELECT @diem = dbo.Ket_qua.Diem_thi FROM dbo.Ket_qua
	WHERE MaSV = @masv
	AND MaMH = MaMH
	ORDER BY dbo.Ket_qua.Lan_thi DESC
	RETURN @diem
END
GO

SELECT dbo.UF_Last_Score_Of_Student ('0212002', 'THCS01')
GO

-- nhập vào 1 sinh viên, trả về danh sách các môn mà sinh viên này phải học
CREATE FUNCTION dbo.UF_List_MH(
	@masv VARCHAR(10)
)
RETURNS TABLE
RETURN
--DECLARE @masv VARCHAR(10)
--SET @masv = '0212001'
SELECT dbo.Mon_hoc.* FROM dbo.Mon_hoc
LEFT JOIN dbo.Khoa ON Khoa.Ma_Khoa = Mon_hoc.Ma_Khoa
LEFT JOIN dbo.Lop ON Lop.Ma_Khoa = Khoa.Ma_Khoa
LEFT JOIN dbo.Chuong_Trinh_Hoc ON Chuong_Trinh_Hoc.Ma_CT = Lop.Ma_CT
LEFT JOIN dbo.Khoa_hoc ON Khoa_hoc.Ma_Khoa_Hoc = Lop.Ma_Khoa_Hoc
LEFT JOIN dbo.Sinh_vien ON Sinh_vien.Ma_Lop = Lop.Ma_Lop
WHERE dbo.Sinh_vien.MaSV = @masv
GO

SELECT * FROM dbo.UF_List_MH('0311001')
GO