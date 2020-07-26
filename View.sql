USE HowKteam
GO

SELECT * FROM dbo.GIAOVIEN
-- tạo ra 1 bảng lưu thông tin Giáo viên, tên bộ môn và lương của giáo viên đó
SELECT HOTEN, TENBM, LUONG INTO Luonggiaovien FROM dbo.GIAOVIEN, dbo.BOMON
WHERE dbo.BOMON.MABM = dbo.GIAOVIEN.MABM

SELECT * FROM dbo.Luonggiaovien

UPDATE dbo.GIAOVIEN SET LUONG = 90000
WHERE MAGV = '006'


-- View là bảng ảo
-- cập nhật dữ liệu theo bảng mà view truy vấn tới mỗi khi lấy view ra sử dụng

-- tạo ra testView từ câu truy vấn
CREATE VIEW  testView AS  SELECT * FROM dbo.GIAOVIEN

SELECT * FROM testView

-- udpate view
ALTER VIEW testView AS SELECT HOTEN FROM dbo.GIAOVIEN