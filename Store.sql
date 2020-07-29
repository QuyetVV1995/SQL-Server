USE HowKteam
GO

-- Store Procedure
-- Là chương trình hay thủ tục
-- Ta có dùng Transact-SQL EXCUTE(EXEC) để thực thi các stored procedure
-- store procedure khác với các hàm xử lý là giá trị trả về của chúng
-- không chứa trong tên và chúng không được sử dụng trực tiếp trong biểu thức

-- Động: có thể chỉnh sửa khối lệnh, tái sử dụng nhiều lần
-- Nhanh hơn: Tự phân tích cú pháp cho tối ưu. Và tạo bản sao để lần sau  chạy không cần thực thi lại từ đầu
-- Bảo mật: Giới hạn quyền User nào sử dụng user nào không
-- Giảm bandwidth: với các gói transaction lớn, vài ngàn dòng lệnh một lúc thì dùng store sẽ đảm bảo

/*
CREATE PROC <Tên store>
[Paramter nếu có]
AS
BEGIN
	<code xử lý>
END

nếu chỉ là câu truy vấn thì có thể không cần Begin và End

*/

CREATE PROC USP_Test
@MaGV NVARCHAR(10), @luong INT
AS
BEGIN
    SELECT * FROM dbo.GIAOVIEN WHERE @MaGV = MAGV
	AND @luong = LUONG 
END

EXEC dbo.USP_Test @MaGV = N'Hai', -- nvarchar(10)
                  @luong = 1000   -- int


