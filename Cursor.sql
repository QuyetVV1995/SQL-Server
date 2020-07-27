USE HowKteam
GO

-- khi có nhu cầu duyệt từng record của bảng, với mỗi record có kết quả xử lý riêng thì dùng cursor
-- Declare <Tên con trỏ> cursor for <câu select>
-- Open <Tên con trỏ>
-- FETCH NEXT FROM <Tên con trỏ> INTO <Danh sách các biến tương ứng kết quả truy vấn>
-- WHILE @@ FETCH_STATUS = 0
-- BEGIN
-- Câu lệnh thực hiện
-- FETCH NEXT lại lần nữa
-- FETCH NEXT FROM <Tên con trỏ> INTO < Danh sách các biến tương ứng kết quả truy vấn>
-- END
-- CLOSE <Tên con trỏ>
-- DEALLOCATE <Tên con trỏ>

------------------
-- từ tuổi của giáo viên nếu lớn hơn 40 thì cho lương là 2500
-- nếu nhỏ hơn 40 và lớn hơn 30 thì lương 2000
-- ngược lại là 1500

SELECT * FROM dbo.GIAOVIEN

-- lấy ra danh sách magv kèm tuổi đưa vào con trỏ có tên là GiaovienCursor
DECLARE GiaovienCursor CURSOR FOR SELECT MAGV, YEAR(GETDATE()) - YEAR(NGSINH) FROM dbo.GIAOVIEN

OPEN GiaovienCursor

DECLARE @maGV CHAR(10)
DECLARE @tuoi INT

FETCH NEXT FROM GiaovienCursor INTO @maGV, @tuoi
WHILE @@FETCH_STATUS = 0
BEGIN
	IF @tuoi > 40
		BEGIN
			UPDATE dbo.GIAOVIEN SET LUONG = 2500 WHERE MAGV = @maGV
		END
	ELSE  
		IF @tuoi > 30
			BEGIN
				UPDATE dbo.GIAOVIEN SET LUONG = 2000 WHERE MAGV = @maGV
			END
	ELSE
		BEGIN
			UPDATE dbo.GIAOVIEN SET LUONG = 1500 WHERE MAGV = @maGV
		END
	FETCH NEXT FROM GiaovienCursor INTO @maGV, @tuoi
END

CLOSE GiaovienCursor
DEALLOCATE GiaovienCursor