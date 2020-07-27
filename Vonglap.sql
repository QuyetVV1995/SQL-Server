USE HowKteam
GO
DECLARE @i INT = 0
DECLARE @n INT = 10000
WHILE (@i < @n)
BEGIN
	INSERT dbo.tableC
	(
	    HOTEN
	)
	VALUES
	(@i -- HOTEN - nvarchar(50)
	    )
	SET @i += 1
END

SELECT * FROM dbo.testView

-- insert 10000 record vao bang bo mon
-- khong trung ID
-- ten bo mon tang dan
