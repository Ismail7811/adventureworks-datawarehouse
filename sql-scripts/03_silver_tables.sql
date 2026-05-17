USE AdventureWorksDW;
GO

CREATE TABLE silver.SalesOrderHeader (
    SalesOrderID        INT             NOT NULL,
    OrderDate           DATE            NOT NULL,
    DueDate             DATE,
    ShipDate            DATE,
    CustomerID          INT             NOT NULL,
    TerritoryID         INT,
    TotalDue            DECIMAL(18,2),
    OnlineOrderFlag     BIT,
    IsValid             BIT             DEFAULT 1,
    LoadDate            DATETIME        DEFAULT GETDATE(),
    SourceSystem        NVARCHAR(50)    DEFAULT 'AdventureWorks2022'
);
GO

CREATE TABLE silver.SalesOrderDetail (
    SalesOrderID        INT             NOT NULL,
    SalesOrderDetailID  INT             NOT NULL,
    ProductID           INT             NOT NULL,
    OrderQty            SMALLINT        NOT NULL,
    UnitPrice           DECIMAL(18,2)   NOT NULL,
    LineTotal           DECIMAL(18,2)   NOT NULL,
    IsValid             BIT             DEFAULT 1,
    LoadDate            DATETIME        DEFAULT GETDATE()
);
GO

CREATE TABLE silver.Customer (
    CustomerID          INT             NOT NULL,
    PersonID            INT,
    TerritoryID         INT,
    AccountNumber       NVARCHAR(10),
    IsValid             BIT             DEFAULT 1,
    LoadDate            DATETIME        DEFAULT GETDATE()
);
GO

CREATE TABLE silver.Product (
    ProductID           INT             NOT NULL,
    Name                NVARCHAR(50)    NOT NULL,
    ProductNumber       NVARCHAR(25),
    ListPrice           DECIMAL(18,2),
    ProductSubcategoryID INT,
    IsValid             BIT             DEFAULT 1,
    LoadDate            DATETIME        DEFAULT GETDATE()
);
GO

CREATE TABLE silver.SalesTerritory (
    TerritoryID         INT             NOT NULL,
    Name                NVARCHAR(50)    NOT NULL,
    CountryRegionCode   NVARCHAR(3),
    [Group]             NVARCHAR(50),
    IsValid             BIT             DEFAULT 1,
    LoadDate            DATETIME        DEFAULT GETDATE()
);
GO