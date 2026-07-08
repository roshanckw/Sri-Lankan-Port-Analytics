USE SriLankaPorts;
GO

--Monthly Trade Summary
WITH MonthlySummary AS
( SELECT year,month,SUM(total_trade) AS total_monthly_trade,
AVG(total_trade) AS average_daily_trade,
SUM(portcalls) AS total_port_calls
FROM port_data
GROUP BY year,month)

SELECT* FROM MonthlySummary
ORDER BY year,month;

--Trade Category Classification
WITH DailyTrade AS
( SELECT date,portname,total_trade FROM port_data)
SELECT date,portname,total_trade, CASE
WHEN total_trade >= 100000
THEN 'High Trade'
WHEN total_trade >= 50000
THEN 'Medium Trade'
ELSE 'Low Trade'
END AS trade_category
FROM DailyTrade
ORDER BY date;

--Monthly port performance
WITH MonthlyPortTrade AS
(SELECT year,month,portname,SUM(total_trade) AS monthly_trade
FROM port_data
GROUP BY
year,month,portname
)
SELECT year,month,portname,monthly_trade
FROM MonthlyPortTrade
ORDER BY year,month,monthly_trade DESC;

--Above average trading days
WITH AverageTrade AS
( SELECT AVG(total_trade) AS overall_average
FROM port_data )
SELECT
p.date,p.portname,p.total_trade
FROM port_data p
CROSS JOIN AverageTrade a
WHERE p.total_trade > a.overall_average
ORDER BY p.total_trade DESC;

--Monthly Import vs Export Summary
WITH MonthlyTrade AS
(SELECT year,month,SUM(import) AS imports,SUM(export) AS exports
FROM port_data
GROUP BY year, month
)
SELECT
year,month,imports,exports,imports-exports AS import_difference
FROM MonthlyTrade
ORDER BY year,month;

--Multi-CTE Example
-- What percentage of yearly trade occurred in each month?
WITH MonthlyTrade AS
( SELECT year, month,SUM(total_trade) AS monthly_trade
FROM port_data
GROUP BY year, month
),
YearlyTrade AS
(SELECT year,SUM(monthly_trade) AS yearly_trade FROM 
MonthlyTrade
GROUP By year
)
SELECT
m.year,
m.month,
m.monthly_trade,
y.yearly_trade,
ROUND (
(m.monthly_trade*100.0)/y.yearly_trade,2)
AS monthly_percentage
FROM MonthlyTrade m
JOIN YearlyTrade y
On m.year = y.year
ORDER BY m.year , m.month;

--Ports With Above-Average Trade
--Which ports handle more trade than the average port?
WITH PortTrade AS
(SELECT portname, SUM(total_trade) AS total_trade
FROM port_data
GROUP BY portname
),
AveragePortTrade AS
(SELECT AVG (total_trade) AS average_trade
FROM PortTrade)

SELECT p.portname,p.total_trade
FROM PortTrade p
CROSS JOIN AveragePortTrade a
WHERE p.total_trade > a.average_trade
ORDER BY p.total_trade DESC;