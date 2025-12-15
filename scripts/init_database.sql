/*
======================================================
Create Database and Schemas
======================================================
Script Purpose:
This script creates a new database name 'DataWarehouse' after checing if it already exists.
If the database exists, it is dropped and recreated. Additionally, the script sets up 3 schemas 
within the database: 'brone','silver',and 'gold'.

WARNING:
	Running this script will drop the entire 'DataWarehouse' database if it exists.
	All data in the database will be permanently deleted. Proceed with cause 
	and ensure you have proper backups before running this script.

*/

USE MASTER
GO

--Drop and recreate the "Datawarehouse" database
IF EXISTS (SELECT 1 FROM sys.databases WHERE NAME = 'DataWarehouse')
Begin
	ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse
End 
GO

---Create the "Datawarehouse" database
CREATE DATABASE DataWarehouse
Go

USE DataWarehouse;
GO
--Create Schemas
CREATE SCHEMA bronze;
Go
CREATE SCHEMA silver
GO
CREATE SCHEMA gold;

