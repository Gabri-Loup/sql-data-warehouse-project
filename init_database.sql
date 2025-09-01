/*
==================================================================================
CREATE DATABASE AND SCHEMAS
==================================================================================

Script purpose:
  This script creates a new database called "DataWarehouse" after checking if it already exists.
  If the database exists, it is dropped and recreated. Addiotionally, the script setups three 
  SCHEMAS withing the database: 'bronze', 'silver' and 'gold'.

WARNING:
Runing this script will drop the entire 'DataWarehouse" database if it already exists.
All data in the database will be erased. Proceed with caution and ensure you have
proper backups before runing this script.
*/


USER master;
GO

-- Drop and recreate the "DataWarehouse" database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN 
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

-- CREATE SCHEMAS
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
