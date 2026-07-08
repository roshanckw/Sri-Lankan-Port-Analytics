--Rank Ports By Total Trade
WITH PortTrade AS
(
SELECT portname, SUM(total_trade) AS total_trade
FROM port_data GROUP BY portname
)
SELECT portname,
total_trade,
RANK() OVER
( ORDER BY total_trade DESC)
AS trade_rank
FROM PortTrade;

--ROW_NUMBER() - give every port a unique ranking
WITH PortTrade AS
( SELECT portname,
SUM(total_trade) AS total_trade
FROM port_data
GROUP BY portname
)

SELECT ROW_NUMBER() OVER
( ORDER BY total_trade DESC)
AS row_number,
portname,total_trade FROM PortTrade;

-- RANK()
WITH PortTrade AS
( SELECT portname,SUM (total_trade) AS total_trade
FROM port_data
GROUP BY portname)
SELECT portname,total_trade,
RANK() OVER
(ORDER BY total_trade DESC)
AS trade_rank
FROM PortTrade;

-- DENSE_RANK()
WITH PortTrade AS
( SELECT portname, SUM (total_trade) AS total_trade
FROM port_data
GROUP BY portname)

SELECT portname,total_trade,DENSE_RANK () OVER 
(ORDER BY total_trade DESC)
AS dense_rank
FROM PortTrade;

--Running Total of Trade
WITH MonthlyTrade AS
(
    SELECT

        year,

        month,

        SUM(total_trade) AS monthly_trade

    FROM port_data

    GROUP BY

        year,

        month
)

SELECT

    year,

    month,

    monthly_trade,

    SUM(monthly_trade) OVER
    (
        ORDER BY year, month
    ) AS running_trade

FROM MonthlyTrade;

--Running Imports
WITH MonthlyImports AS
( SELECT year, month, SUM(import) AS monthly_import
FROM port_data
GROUP BY year, month
)
SELECT

    year,

    month,

    monthly_import,

    SUM(monthly_import) OVER
    (
        ORDER BY year, month
    ) AS cumulative_imports

FROM MonthlyImports;

--Running Exports
WITH MonthlyExports AS
(
SELECT year, month, SUM(export) AS monthly_export
FROM port_data
GROUP BY year, month
)
SELECT year, month,monthly_export,
SUM(monthly_export) OVER
(ORDER BY year, month)
AS cumulative_exports
FROM MonthlyExports;

--Monthly Ranking
WITH MonthlyTrade AS
( SELECT year, month, SUM(total_trade) AS monthly_trade
FROM port_data
GROUP BY year, month)
SELECT year,month, monthly_trade,RANK()OVER
(ORDER BY monthly_trade DESC) AS monthly_rank
FROM MonthlyTrade;

-- Top Trade Months
WITH MonthlyTrade AS
(SELECT year,month,SUM(total_trade) AS monthly_trade
FROM port_data
GROUP BY year,month
)
SELECT * FROM (
SELECT year,month,monthly_trade,DENSE_RANK() OVER(ORDER BY monthly_trade DESC)AS ranking FROM MonthlyTrade)RankedMonths
WHERE ranking <=5;

-- Running Average of Trade
WITH MonthlyTrade AS
(SELECT year,month,SUM(total_trade) AS monthly_trade
FROM port_data
GROUP BY year, month
)
SELECT year, month, monthly_trade, ROUND (AVG(monthly_trade)OVER(ORDER BY year,month),2
) AS running_average
FROM MonthlyTrade;