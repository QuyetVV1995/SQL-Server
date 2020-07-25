-- unique: duy nhat trong toan bo bang, truong nao co Unique thi khong the co 2 gia tri trung nhau
-- Not null: Truong do ko duoc phep NULL
-- Default: gia tri mac dinh neu khong dc gan gia tri


CREATE TABLE testPrimaryKey1(
	ID INT UNIQUE NOT NULL DEFAULT 1,
	fisrtName NVARCHAR(100) DEFAULT N'QuyetVV'
)
GO

-- cap nhat sau khi tao bang, khi da tao bang, muon sua ID thanh primaryKey
ALTER TABLE dbo.testPrimaryKey1 ADD PRIMARY KEY (ID)

-- tao primary key ngay trong bang ma dat dat ten cho Key do
CREATE TABLE testPrimaryKey3(
	ID INT NOT NULL,
	firstName NVARCHAR(20) DEFAULT N'122w',
	 
	CONSTRAINT PK_test3 --> sau nay xoa key dua tren cai ten nay
	PRIMARY KEY(ID)
)
GO

-- tao primary Key sau khi tao bang va dat ten cho Key
CREATE TABLE testPrimaryKey4(
	ID INT UNIQUE NOT NULL DEFAULT 1,
	fisrtName NVARCHAR(100) DEFAULT N'QuyetVV'
)
GO
ALTER TABLE dbo.testPrimaryKey4 ADD CONSTRAINT PK_test4 PRIMARY KEY(ID)


INSERT dbo.testPrimaryKey1
(
    ID
)
VALUES
(   9
    )