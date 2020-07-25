USE HowKteam
GO

-- xuất ra thông tin giáo viên mà tên bắt đầu bằng chữ l
SELECT * FROM dbo.GIAOVIEN
WHERE HOTEN LIKE 'l%'		-- % là còn những cái đằng sau l

-- xuất ra thông tin giáo viên mà tên kết thúc bằng n
SELECT * FROM dbo.GIAOVIEN
WHERE HOTEN LIKE '%n'

-- xuất ra thông tin giáo viên có tồn tại chữ n
SELECT * FROM dbo.GIAOVIEN
WHERE HOTEN LIKE '%n%'

-- xuất ra thông tin giáo viên có tồn tại chữ ế
SELECT * FROM dbo.GIAOVIEN
WHERE HOTEN LIKE N'%ế%'
