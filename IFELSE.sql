USE HowKteam
GO

DECLARE @luongtb INT
DECLARE @soluongGV INT
SELECT * FROM dbo.GIAOVIEN
SELECT @soluongGV = COUNT(*) FROM dbo.GIAOVIEN
PRINT @soluongGV
SELECT @luongtb = (SUM(LUONG)/@soluongGV) FROM dbo.GIAOVIEN
PRINT @luongtb

DECLARE @maGV CHAR(10) = '002'
DECLARE @luongmaGV INT = 0

SELECT @luongmaGV = dbo.GIAOVIEN.LUONG FROM dbo.GIAOVIEN WHERE MAGV = @maGV
-- nếu lương của @maGV > @luongtb
-- xuất ra lớn hơn và ngược lại
PRINT @luongtb
PRINT @luongmaGV
IF @luongmaGV > @luongtb
	BEGIN
	PRINT 'lon hon'
	PRINT @luongtb
	PRINT @luongmaGV
	END
ELSE
	PRINT 'nho hon'

-- vi du 2: update luong cua toan bo giao vien neu luong nhap vao cao hon luong trung binh
-- nguoc lai chi update giao vien nam
DECLARE @luongtb1 INT
DECLARE @soluongGV1 INT
SELECT @soluongGV1 = COUNT(*) FROM dbo.GIAOVIEN
SELECT @luongtb1 = (SUM(LUONG)/@soluongGV1) FROM dbo.GIAOVIEN

DECLARE @luong INT = 1500

IF(@luong > @luongtb1)
	BEGIN
		UPDATE dbo.GIAOVIEN SET LUONG = @luong
	END
ELSE
	BEGIN
		UPDATE dbo.GIAOVIEN SET LUONG = @luong
		WHERE PHAI = 'Nam'
	END

SELECT * FROM dbo.GIAOVIEN


