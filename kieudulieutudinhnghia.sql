USE HowKteam
GO

-- kiểu dữ liệu tự định nghĩa
-- EXEC sp_addtype ' tên kiểu dữ liệu ', ' kiểu dữ liệu thực tế', 'Not null' (có hay không đều được)
-- kiểu dữ liệu mới nằm trong Programmability/Types/User-Define Data Types
EXEC sp_addtype 'NName', 'nvarchar(100)', 'Not null'

CREATE TABLE testType1(
	firstName NName,
	address NVARCHAR(10)
)
GO

