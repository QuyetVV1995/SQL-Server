USE HowKteam
GO

SELECT * FROM dbo.NGUOITHAN WHERE TEN = 'Mai'

BEGIN TRANSACTION 
DELETE dbo.NGUOITHAN WHERE TEN = 'Mai'
-- chuỗi thao tác loằng ngoằn phức tạp
ROLLBACK	-- hủy bỏ trans

BEGIN TRANSACTION 
DELETE dbo.NGUOITHAN WHERE TEN = 'Mai'
-- chuỗi thao tác loằng ngoằn phức tạp
COMMIT	-- chấp nhận trans

--------------  đặt tên
DECLARE @trans VARCHAR(20)
SELECT @trans = 'trans1'

BEGIN TRANSACTION 
DELETE dbo.NGUOITHAN WHERE TEN = 'Mai'
-- chuỗi thao tác loằng ngoằn phức tạp
COMMIT	TRANSACTION @trans-- chấp nhận trans
-----------------------------------------------

BEGIN TRANSACTION
SAVE TRANSACTION trans1
DELETE dbo.NGUOITHAN WHERE TEN = 'Thu'

SAVE TRANSACTION trans2
DELETE dbo.NGUOITHAN WHERE TEN = 'An'

ROLLBACK TRANSACTION trans2