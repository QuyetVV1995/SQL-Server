USE HowKteam
GO
-- mục đích để backup
-- lấy hết dữ liệu của bảng "cha" đưa vào bảng "con"
-- bảng này có các record tương ứng của bảng GV

SELECT * INTO TableA
FROM dbo.GIAOVIEN

-- tạo ra một bảng có 1 cột dữ liệu từ bảng Cha

SELECT HOTEN INTO tableC
FROM dbo.GIAOVIEN
WHERE LUONG > 2000

-- tạo một bảng mới từ nhiều bảng
SELECT MAGV, HOTEN, TENBM INTO GVbackup
FROM dbo.GIAOVIEN, dbo.BOMON
WHERE dbo.BOMON.MABM = dbo.GIAOVIEN.MAGV

