CREATE TABLE test(
	maso INT,
	ten NVARCHAR(10),
	ngaysinh DATE,
	nam BIT,
	diachi CHAR(20),
	luong FLOAT
)
GO

-- them du lieu
INSERT dbo.test
VALUES
(   12,         -- maso - int
    N'Quyet',       -- ten - nvarchar(10)
    '19950712', -- ngaysinh - date
    1,      -- nam - bit
    'Ha noi',        -- diachi - char(20)
    2000       -- luong - float
    )
GO

-- xoa du lieu
-- toan tu: <, >, <>, =, AND, OR
DELETE dbo.test WHERE luong > 5000 AND maso = 2020 OR maso = 2022

-- update toan bo DB voi 1 truong update
UPDATE dbo.test SET luong = 1 WHERE nam = 1