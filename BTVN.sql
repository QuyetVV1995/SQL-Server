USE Quan_ly_sinh_vien
GO

-- cho biet sinh vien khong thi dau (diem < 5) mon cau truc du lieu nhung chua thi lai
--  lấy ra cách sinh viên thi môn cấu trúc dữ liệu 1 mà không phải lần 1
SELECT * FROM dbo.Sinh_vien
LEFT JOIN dbo.Ket_qua ON dbo.Sinh_vien.MaSV =  dbo.Ket_qua.MaSV
LEFT JOIN dbo.Mon_hoc ON dbo.Ket_qua.MaMH = dbo.Mon_hoc.MaMH
WHERE dbo.Mon_hoc.TenMH LIKE N'Cau truc du lieu 1'
AND dbo.Ket_qua.Lan_thi = 1
AND dbo.Ket_qua.Diem_thi < 5
AND dbo.Sinh_vien.MaSV NOT IN
(
SELECT dbo.Sinh_vien.MaSV FROM dbo.Sinh_vien
LEFT JOIN dbo.Ket_qua ON dbo.Sinh_vien.MaSV =  dbo.Ket_qua.MaSV
LEFT JOIN dbo.Mon_hoc ON dbo.Ket_qua.MaMH = dbo.Mon_hoc.MaMH
WHERE dbo.Mon_hoc.TenMH LIKE N'Cau truc du lieu 1'
AND dbo.Ket_qua.Lan_thi > 1
)


-- Với mỗi lớp thuộc khoa CNTT, cho biết mã lớp, mã khóa học, tên chương trình và số sinh viên thuộc lớp đó
SELECT lop.Ma_Lop, lop.Ma_Khoa_Hoc, dbo.Chuong_Trinh_Hoc.Ten_CT, COUNT(dbo.Sinh_vien.MaSV) AS [số sinh viên] FROM dbo.Lop
LEFT JOIN dbo.Chuong_Trinh_Hoc ON  Chuong_Trinh_Hoc.Ma_CT = Lop.Ma_CT
LEFT JOIN dbo.Sinh_vien ON Sinh_vien.Ma_Lop = Lop.Ma_Lop
LEFT JOIN dbo.Khoa ON Khoa.Ma_Khoa = Lop.Ma_Khoa
WHERE dbo.Khoa.Ma_Khoa = 'CNTT'
GROUP BY dbo.Lop.Ma_Lop, dbo.Lop.Ma_Khoa_Hoc, dbo.Chuong_Trinh_Hoc.Ten_CT

