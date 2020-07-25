-- luu y chay script DB_howkteam truoc khi chay script nay
USE HowKteam
GO

SELECT * FROM dbo.BOMON		-- lay het cac du lieu trong bang bo mon ra

-- lay Ma de tai + ten de tai trong bang bo mon
SELECT MABM, TENBM FROM dbo.BOMON

-- doi ten cot hien thi
SELECT MABM AS 'howkteam' FROM dbo.BOMON

-- Xuat MaGV + Ten + TenBoMon tu to hop 2 bang Giao vien va Bo mon
-- su dung AS de gan ten, GV.MAGV de chi dich danh ma giao vien cua bang Giao vien
SELECT GV.MAGV,GV.HOTEN,BM.TENBM FROM dbo.GIAOVIEN AS GV, dbo.BOMON AS BM