USE HowKteam
GO

SELECT GV.MAGV, GV.HOTEN, NT.TEN FROM dbo.GIAOVIEN AS GV, dbo.NGUOITHAN AS NT
WHERE GV.MAGV = NT.MAGV

-- lay giao vien nho hon 40 tuoi
SELECT * FROM dbo.GIAOVIEN 
WHERE (YEAR(GETDATE()) - YEAR(NGSINH)) > 40

-- lay ra ho ten, nam sinh va tuoi cua giao vien lon hon 35t
SELECT HOTEN, NGSINH, YEAR(GETDATE()) - YEAR(NGSINH)  FROM dbo.GIAOVIEN
WHERE (YEAR(GETDATE()) - YEAR(NGSINH)) > 35

-- lay ra Ma GV, ten GV, ten khoa cua giao vien do lam viec
SELECT GV.MAGV, gv.HOTEN, K.TENKHOA FROM dbo.GIAOVIEN AS GV, dbo.BOMON AS BM, dbo.KHOA AS K
WHERE GV.MABM = BM.MABM AND BM.MAKHOA = K.MAKHOA

-- lay ra giao vien la truong bo mon
SELECT GV.* FROM dbo.GIAOVIEN AS GV, dbo.BOMON AS BM
WHERE GV.MAGV = bm.TRUONGBM

-- Dem so luong giao vien
-- COUNT(*) -> đếm số lượng của tất cả record
-- COUNT(tên trường nào đó) -> đếm số lượng của tên trường đó
SELECT COUNT(*) AS N'Số lượng giáo viên' FROM dbo.GIAOVIEN

-- đếm số lượng người thân của giáo viên có maGV là 007
SELECT COUNT(*) AS N'Số lượng người thân' 
SELECT * FROM dbo.GIAOVIEN, dbo.NGUOITHAN
WHERE dbo.GIAOVIEN.MAGV = '007' AND
dbo.GIAOVIEN.MAGV = dbo.NGUOITHAN.MAGV

-- lấy ra tên giáo viên và tên đề tài người đó tham gia
SELECT HOTEN, TENDT FROM dbo.GIAOVIEN, dbo.DETAI, dbo.THAMGIADT
WHERE dbo.GIAOVIEN.MAGV =  dbo.THAMGIADT.MAGV
AND dbo.DETAI.MADT =  dbo.THAMGIADT.MADT

-- xuất ra thông tin giáo viên và giáo viên quản lý chủ nhiệm người đó
SELECT gv1.HOTEN, gv2.HOTEN FROM dbo.GIAOVIEN AS gv1, dbo.GIAOVIEN AS gv2
WHERE gv1.GVQLCM = gv2.MAGV

-- xuất ra số lượng giáo viên của khoa CNTT
SELECT COUNT(*) AS 'số lượng giáo viên của khoa CNTT' FROM dbo.GIAOVIEN AS GV, dbo.BOMON AS BM, dbo.KHOA AS K
WHERE GV.MABM = BM.MABM AND
BM.MAKHOA = K.MAKHOA AND
K.MAKHOA = 'CNTT'

