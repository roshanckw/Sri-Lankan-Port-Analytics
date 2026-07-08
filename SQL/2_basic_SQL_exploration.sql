USE SriLankaPorts;
GO

--How many rows do we have?
SELECT COUNT(*) AS total_records
FROM port_data;

--How many unique ports?
SELECT COUNT(DISTINCT portname) AS total_ports
FROM port_data;

-- What are the actual port names?
SELECT DISTINCT portname
FROM port_data
ORDER BY portname;

--Date range
SELECT MIN(date) AS start_date,
MAX(date) AS end_date
FROM port_data;

--What is the avg import volume per record?
SELECT AVG (import) AS avg_import_volume FROM port_data;

--What is the avg export volume?
SELECT AVG(export) AS avg_export_volume FROM port_data;

--What is total trade volume?
SELECT SUM(import) AS total_imports,
SUM(export) AS total_exports,
SUM(import + export) AS total_trade
FROM port_data;

--Missing values check
SELECT
    SUM(CASE WHEN portname IS NULL THEN 1 ELSE 0 END) AS missing_portname,
    SUM(CASE WHEN date IS NULL THEN 1 ELSE 0 END) AS missing_date,
    SUM(CASE WHEN import IS NULL THEN 1 ELSE 0 END) AS missing_import,
    SUM(CASE WHEN export IS NULL THEN 1 ELSE 0 END) AS missing_export
FROM port_data;
