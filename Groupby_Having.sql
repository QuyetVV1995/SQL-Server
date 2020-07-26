USE HowKteam
GO

-- xuất ra số lượng giáo viên trong từng bộ môn mà số giáo viên > 2
-- having -> như where của select nhưng dành cho group by
SELECT dbo.BOMON.MABM, COUNT(*) FROM dbo.GIAOVIEN, dbo.BOMON
WHERE dbo.BOMON.MABM = dbo.GIAOVIEN.MABM
GROUP BY dbo.BOMON.MABM HAVING COUNT(*) > 2
