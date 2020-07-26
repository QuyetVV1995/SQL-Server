USE HowKteam
GO

-- kiểm tra xem giáo viên 001 có phải là giáo viên quản lý chuyên môn hay không
-- lấy ra danh sách các mã giáo viên QLCM
-- kiểm tra mã GV 001 có tồn tại trong danh sách đó không

SELECT * FROM dbo.GIAOVIEN
WHERE MAGV = '001'
-- kiểm tra 001 có tồn tại trong danh sách không
AND MAGV IN(
	SELECT GVQLCM FROM dbo.GIAOVIEN
)

-- truy vấn lồng trong from
SELECT * FROM dbo.GIAOVIEN, (SELECT * FROM dbo.DETAI) AS DT


-- lấy ra tất cả thông tin của giáo viên
SELECT * FROM dbo.GIAOVIEN AS GV
WHERE 1 < (
	SELECT COUNT(*) FROM dbo.THAMGIADT
	WHERE MAGV = GV.MAGV
)

-- lay danh sach bo mon nam trong khoa hien tai
SELECT * FROM dbo.KHOA AS K
WHERE 2 < (
	SELECT COUNT(*) FROM dbo.BOMON AS BM, dbo.GIAOVIEN AS GV
	WHERE BM.MAKHOA = K.MAKHOA
	AND
    BM.MABM = GV.MABM
)