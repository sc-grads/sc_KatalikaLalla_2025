CREATE TABLE dbo.ClientKey (
    ClientID INT IDENTITY(1,1) PRIMARY KEY,
    ClientName NVARCHAR(255)
);

SELECT * FROM dbo.ClientKey;