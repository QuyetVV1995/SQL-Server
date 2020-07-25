USE HowKteam
GO

-- inner join -> kieu cu -> có thể sau này không còn được hỗ trợ
-- mỗi inner join đều cần điều kiện
SELECT * FROM dbo.GIAOVIEN, dbo.BOMON
WHERE dbo.BOMON.MABM = dbo.GIAOVIEN.MABM


-- inner join kiểu mới
SELECT * FROM dbo.GIAOVIEN INNER JOIN dbo.BOMON
ON BOMON.MABM = GIAOVIEN.MABM

-- viết tắt
SELECT * FROM dbo.KHOA JOIN dbo.BOMON
ON BOMON.MAKHOA = KHOA.MAKHOA
