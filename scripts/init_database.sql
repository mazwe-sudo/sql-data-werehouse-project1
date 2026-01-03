===============================
  Crate Database and Schemas
  =============================
  
With this script i was creating a new database named 'DataWarehouse' after checking if it already exists.if the database  exists, it is dropped and recreated.
  Additionalyly ,the script sets up the schemas within the database: 'bronze' ,'silver' and 'gold'.
 =============================================================

  USE master ;
GO
  
IF EXISTS (SELECT 1 FROM sys.databases WHERE name ='DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBLACK IMMEDIATE ;
  DROP DATABASE DataWarehouse ;
END ;
GO
  
CREATE DATABASE DataWarehouse ;
GO
USE DataWarehouse ;
GO

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver ;
GO

CREATE SCHEMA gold ;
GO
