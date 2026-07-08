-- Project : Sri Lankan Port Analytics

CREATE DATABASE SriLankaPorts;
GO

USE SriLankaPorts;
GO

-- WHY GO ? - GO tells SQL Server : Execute everything above before continuting 

--CREATE MAIN Table

-- ===========================================
-- Create Main Table
-- ===========================================

CREATE TABLE port_data (

    date DATE,

    year INT,

    month INT,

    day INT,

    portid VARCHAR(20),

    portname VARCHAR(100),

    country VARCHAR(100),

    ISO3 CHAR(3),

    portcalls_container INT,

    portcalls_dry_bulk INT,

    portcalls_general_cargo INT,

    portcalls_roro INT,

    portcalls_tanker INT,

    portcalls_cargo INT,

    portcalls INT,

    import_container INT,

    import_dry_bulk INT,

    import_general_cargo INT,

    import_roro INT,

    import_tanker INT,

    import_cargo INT,

    import INT,

    export_container INT,

    export_dry_bulk INT,

    export_general_cargo INT,

    export_roro INT,

    export_tanker INT,

    export_cargo INT,

    export INT,

    total_trade INT,

    trade_balance INT,

    import_percentage DECIMAL(5,2),

    export_percentage DECIMAL(5,2),

    year_month CHAR(7),

    avg_import_per_ship DECIMAL(18,2),

    avg_export_per_ship DECIMAL(18,2),

    avg_trade_per_ship DECIMAL(18,2),

    import_export_ratio DECIMAL(18,4),

    container_share DECIMAL(8,4),

    tanker_share DECIMAL(8,4),

    dry_bulk_share DECIMAL(8,4),

    general_cargo_share DECIMAL(8,4),

    roro_share DECIMAL(8,4)

);
GO

SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='port_data';






DROP TABLE port_data;

EXEC sp_rename 
'processed_sri_lanka_port_data', 
'port_data';

--Verify Data
SELECT TOP 10 *
FROM port_data;

--Count rows
SELECT COUNT(*) AS TotalRecords
FROM port_data;

--Check ports
SELECT DISTINCT portname
FROM port_data;

--Check date range
SELECT MIN(date) AS StartDate,
MAX(date) AS EndDate
FROM port_data;

--Check Missing Values
SELECT
SUM(CASE WHEN portname IS NULL THEN 1 ELSE 0 END) AS MissingPortName,
SUM(CASE WHEN import IS NULL THEN 1 ELSE 0 END) AS MissingImports,
SUM(CASE WHEN export IS NULL THEN 1 ELSE 0 END) AS MissingExports,
SUM(CASE WHEN portcalls IS NULL THEN 1 ELSE 0 END) AS MissingPortCalls
FROM port_data;
