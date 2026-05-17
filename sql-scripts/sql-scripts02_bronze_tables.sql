USE AdventureWorksDW;
GO

CREATE TABLE bronze.SalesOrderHeader (
    SalesOrderID        INT,
    OrderDate           DATETIME,
    DueDate             DATETIME,
    ShipDate            DATETIME,
    CustomerID          INT,
    TerritoryID         INT,
    TotalDue            MONEY,
    Status              TINYINT,
    OnlineOrderFlag     BIT,
    LoadDate            DATETIME DEFAULT GETDATE()
);
GO

CREATE TABLE bronze.SalesOrderDetail (
    SalesOrderID        INT,
    SalesOrderDetailID  INT,
    ProductID           INT,
    OrderQty            SMALLINT,
    UnitPrice           MONEY,
    LineTotal           MONEY,
    LoadDate            DATETIME DEFAULT GETDATE()
);
GO

CREATE TABLE bronze.Customer (
    CustomerID          INT,
    PersonID            INT,
    TerritoryID         INT,
    AccountNumber       NVARCHAR(10),
    LoadDate            DATETIME DEFAULT GETDATE()
);
GO

CREATE TABLE bronze.Product (
    ProductID           INT,
    Name                NVARCHAR(50),
    ProductNumber       NVARCHAR(25),
    ListPrice           MONEY,
    ProductSubcategoryID INT,
    LoadDate            DATETIME DEFAULT GETDATE()
);
GO

CREATE TABLE bronze.SalesTerritory (
    TerritoryID         INT,
    Name                NVARCHAR(50),
    CountryRegionCode   NVARCHAR(3),
    [Group]             NVARCHAR(50),
    LoadDate            DATETIME DEFAULT GETDATE()
);
GO