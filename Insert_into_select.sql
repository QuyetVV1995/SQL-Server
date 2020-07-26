USE HowKteam
GO

-- insert into select -> copy dữ liệu vào bảng đã tồn tại
SELECT * INTO cloneGV
FROM dbo.GIAOVIEN
WHERE 1 = 0

INSERT INTO dbo.cloneGV
SELECT * FROM dbo.GIAOVIEN

SELECT * FROM dbo.cloneGV