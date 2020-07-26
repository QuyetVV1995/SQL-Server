USE HowKteam
GO

CREATE TABLE testCheck(
	ID INT PRIMARY KEY IDENTITY,
	luong INT CHECK( luong > 30 AND luong < 90)
)
GO

INSERT dbo.testCheck
(
    luong
)
VALUES
(50  -- luong - int
    )
GO

ALTER TABLE dbo.testCheck ADD CONSTRAINT CK_luong
