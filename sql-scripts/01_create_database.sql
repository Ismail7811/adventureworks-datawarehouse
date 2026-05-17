-- =============================================
-- Étape 1 : Création de la base AdventureWorksDW
-- Auteur : Étudiant 1 - Data Engineer
-- =============================================

CREATE DATABASE AdventureWorksDW;
GO

USE AdventureWorksDW;
GO

-- Création des 3 schémas Medallion
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO