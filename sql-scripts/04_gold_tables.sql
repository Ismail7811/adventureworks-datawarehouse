USE AdventureWorksDW;
GO

-- DIMENSION TEMPS
CREATE TABLE gold.DimDate (
    DateKey         INT             PRIMARY KEY,
    FullDate        DATE            NOT NULL,
    Year            INT,
    Quarter         INT,
    Month           INT,
    MonthName       NVARCHAR(20),
    Week            INT,
    DayOfWeek       NVARCHAR(20)
);
GO

-- DIMENSION CLIENT
CREATE TABLE gold.DimClient (
    ClientKey       INT             PRIMARY KEY IDENTITY(1,1),
    CustomerID      INT,
    FullName        NVARCHAR(100),
    Email           NVARCHAR(100),
    TerritoryID     INT,
    StartDate       DATE,
    EndDate         DATE,
    IsCurrent       BIT             DEFAULT 1
);
GO

-- DIMENSION PRODUIT
CREATE TABLE gold.DimProduit (
    ProduitKey      INT             PRIMARY KEY IDENTITY(1,1),
    ProductID       INT,
    ProductName     NVARCHAR(100),
    Category        NVARCHAR(50),
    SubCategory     NVARCHAR(50),
    ListPrice       DECIMAL(18,2)
);
GO

-- DIMENSION GEOGRAPHIE
CREATE TABLE gold.DimGeographie (
    GeoKey          INT             PRIMARY KEY IDENTITY(1,1),
    TerritoryID     INT,
    Region          NVARCHAR(50),
    Country         NVARCHAR(50),
    Continent       NVARCHAR(50)
);
GO

-- TABLE DE FAITS
CREATE TABLE gold.FactVentes (
    FactKey         INT             PRIMARY KEY IDENTITY(1,1),
    DateKey         INT             FOREIGN KEY REFERENCES gold.DimDate(DateKey),
    ClientKey       INT             FOREIGN KEY REFERENCES gold.DimClient(ClientKey),
    ProduitKey      INT             FOREIGN KEY REFERENCES gold.DimProduit(ProduitKey),
    GeoKey          INT             FOREIGN KEY REFERENCES gold.DimGeographie(GeoKey),
    Quantite        INT,
    PrixUnitaire    DECIMAL(18,2),
    MontantTotal    DECIMAL(18,2),
    Marge           DECIMAL(18,2)
);
GO