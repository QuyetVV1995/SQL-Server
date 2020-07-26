USE HowKteam
GO

-- tạo index trên bảng người thân
-- tăng tốc độ tìm kiếm, chậm tốc độ thêm sửa xóa
-- cho phép các trường trùng nhau
CREATE INDEX indexName ON dbo.NGUOITHAN(MAGV)

-- cho phép các trường không trùng nhau
CREATE UNIQUE INDEX indexNameUni ON dbo.NGUOITHAN(MAGV)

SELECT * FROM dbo.NGUOITHAN WHERE MAGV='008' AND TEN = 'Nam'
