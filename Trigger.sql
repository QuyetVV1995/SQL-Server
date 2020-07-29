USE HowKteam
GO

-- trigger sẽ được gọi mỗi khi có thao tác thay đổi thông tin bảng
-- Inserted: chứa những trường đã insert | update vào bảng
-- deleted: chứa những trường bị xóa khỏi bảng
ALTER TRIGGER UTG_InsertGV
ON dbo.GIAOVIEN
FOR	INSERT, UPDATE
AS
BEGIN
	ROLLBACK TRAN -- hủy bỏ thay đổi cập nhật bảng
	PRINT 'triggerE'
END
GO


INSERT dbo.GIAOVIEN
(
    MAGV,
    HOTEN,
    LUONG,
    PHAI,
    NGSINH,
    DIACHI,
    GVQLCM,
    MABM
)
VALUES
(   N'015',       -- MAGV - nchar(3)
    N'Giaovien moi',       -- HOTEN - nvarchar(50)
    2000.0,       -- LUONG - float
    N'Nam',       -- PHAI - nchar(3)
    GETDATE(), -- NGSINH - date
    N'abcde',       -- DIACHI - nchar(50)
    NULL,       -- GVQLCM - nchar(3)
    N'HPT'        -- MABM - nchar(4)
    )


SELECT * FROM dbo.GIAOVIEN
GO

-------
-- không cho phép xóa thông tin của giáo viên có tuổi lớn hơn 40
ALTER TRIGGER UTG_abortOlderThan40
ON dbo.GIAOVIEN
FOR DELETE
AS
BEGIN
	DECLARE @count INT = 0
	SELECT @count = COUNT(*) FROM Deleted
	WHERE YEAR(GETDATE()) - YEAR(Deleted.NGSINH) < 1
	IF(	@count > 0)
		PRINT 'khong dc xoa nguoi lon hon 40 tuoi'
		ROLLBACK TRAN

END 

DELETE dbo.GIAOVIEN WHERE MAGV = '022'