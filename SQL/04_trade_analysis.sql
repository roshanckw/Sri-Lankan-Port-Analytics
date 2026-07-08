--Imports by port
SELECT portname, SUM(import) AS total_imports
FROM port_data GROUP BY portname ORDER BY total_imports DESC;

--Exports by Port
SELECT portname, SUM(export) AS total_exports
FROM port_data GROUP by portname ORDER BY total_exports DESC;

--Trade Balance by Port
SELECT portname, SUM(import) AS total_imports,
SUM(export) AS total_exports,
SUM(export)- SUM(import) AS trade_balance
FROM port_data
GROUP BY portname
ORDER BY trade_balance DESC;

--Import_Export Ratio
SELECT

    portname,

    SUM(import) AS total_imports,

    SUM(export) AS total_exports,

    ROUND(

        CAST(SUM(import) AS FLOAT)

        /

        NULLIF(SUM(export),0),

        2

    ) AS import_export_ratio

FROM port_data

GROUP BY portname

ORDER BY import_export_ratio DESC;

--Most Import-Oriented ports
SELECT
portname,
SUM(import) AS total_imports,
SUM(export) AS total_exports,
CASE
WHEN SUM(import) > SUM(export)
THEN 'Import-Orienetd'
ELSE 'Not Import-Oriented'
END AS trade_type
FROM port_data
GROUP BY portname
ORDER BY total_imports DESC;

--Most Export- Oriented Ports
SELECT
portname,
SUM(import) AS total_imports,
SUM(export) AS total_exports,
CASE
WHEN SUM(export)>SUM(import)
THEN 'Export-Orieneted'
ELSE 'Not-Export-Orieneted'
END AS trade_type
FROM port_data
GROUP BY portname
ORDER BY total_exports DESC;

--Trade Classification
SELECT portname, 
SUM(import) AS total_imports,
SUM(export) AS total_exports,
CASE
WHEN SUM(import) > SUM (export)
THEN 'Import-Dominant'
WHEN SUM(export) > SUM(import)
THEN 'Export-DOminant'
ELSE 'Balanced'
END AS trade_category
FROM port_data
GROUP BY portname
ORDER BY portname;

--Ports with Significant Trade (HAVING)
SELECT portname,
SUM(total_trade) AS total_trade
FROM port_data
GROUP BY portname
HAVING SUM(total_trade)>1000000
ORDER BY total_trade DESC;