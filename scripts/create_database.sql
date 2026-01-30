/* 

====================================================
Create database and schemas
=====================================================

Script Purpose:

This script creates a new database named 'DataWarehouse' after checking it already exists.
If it database exists it is dropped and recreated. Additionally, the script sets up three schemas
within the database:'bronze','silver','gold'.

Warning:

Running the script will drop the entire 'DataWarehouse' after checking if it already exists.
All data in the database will be permanently deleted.

*/


USE master;
GO

--Drop and recreate the 'DataWarehouse' database

IF EXISTS(select 1 from sys.databases where name='DataWarehouse')
BEGIN 
ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE DataWarehouse;
END;
GO

--Create the 'DataWarehouse' database

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

--Create Schemas

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
