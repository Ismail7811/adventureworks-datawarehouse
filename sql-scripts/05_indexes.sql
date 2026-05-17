USE AdventureWorksDW;
GO

-- Index columnstore NON-clustered (compatible avec la clé primaire)
CREATE NONCLUSTERED COLUMNSTORE INDEX NCCI_FactVentes
ON gold.FactVentes(DateKey, ClientKey, ProduitKey, GeoKey, Quantite, PrixUnitaire, MontantTotal, Marge);
GO

-- Index sur les clés étrangères
CREATE INDEX IX_FactVentes_DateKey    ON gold.FactVentes(DateKey);
GO
CREATE INDEX IX_FactVentes_ClientKey  ON gold.FactVentes(ClientKey);
GO
CREATE INDEX IX_FactVentes_ProduitKey ON gold.FactVentes(ProduitKey);
GO
CREATE INDEX IX_FactVentes_GeoKey     ON gold.FactVentes(GeoKey);
GO

-- Index Silver
CREATE INDEX IX_Silver_OrderDate
ON silver.SalesOrderHeader(OrderDate);
GO
CREATE INDEX IX_Silver_CustomerID
ON silver.SalesOrderHeader(CustomerID);
GO
CREATE INDEX IX_Silver_ProductID
ON silver.SalesOrderDetail(ProductID);
GO