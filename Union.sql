﻿USE HowKteam
GO
-- lay ra nhung record duy nhat
SELECT MAGV FROM dbo.GIAOVIEN
WHERE LUONG > 2000
UNION
SELECT MAGV FROM dbo.NGUOITHAN
WHERE PHAI = N'Nữ'