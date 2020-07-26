USE HowKteam
GO

-- xuất ra Danh sách tên bộ môn và số lượng giáo viên của bộ môn đó
SELECT TENBM, COUNT(*) FROM dbo.BOMON, dbo.GIAOVIEN
WHERE dbo.BOMON.MABM = dbo.GIAOVIEN.MABM
GROUP BY TENBM, dbo.BOMON.MABM

-- cột hiển thị phải là thuộc tính nằm trong khối group by hoặc là Agreegate function

-- lấy ra danh sách giáo viên có lương > lương trung bình của Giáo viên

SELECT * FROM dbo.GIAOVIEN
WHERE LUONG > (SELECT SUM(LUONG) FROM dbo.GIAOVIEN )/ ((SELECT COUNT(*) FROM dbo.GIAOVIEN))

-- xuất ra tên giáo viên và số lượng đề tài giáo viên đó đã làm
SELECT gv.HOTEN, COUNT(*) FROM dbo.GIAOVIEN AS gv, dbo.THAMGIADT AS tgdt
WHERE gv.MAGV = tgdt.MAGV
GROUP BY gv.MAGV, gv.HOTEN