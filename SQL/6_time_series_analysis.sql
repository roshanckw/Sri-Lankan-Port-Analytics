--How do import volumes change from month to month?
SELECT YEAR (date) AS year,
MONTH (date) AS month,
SUM(import) AS total_imports
FROM port_data
GROUP BY
YEAR (date),
MONTH(date)
ORDER BY
Year,
month;

--How do exports change over time?
SELECT
YEAR(date) AS year,
MONTH(date) AS month,
SUM(export)AS total_exports
FROM port_data
GROUP BY
YEAR(date),
MONTH(date)
ORDER BY
year,
month;

--Monthly Trade Volume
SELECT
YEAR(date) AS year,
MONTH(date) AS month,
SUM(total_trade) AS total_trade
FROM port_data
GROUP BY
YEAR(date),
MONTH(date)
ORDER BY year,month;

--How many vessels arrived each month?
SELECT YEAR(date) AS year,
MONTH(date) AS month,
SUM(portcalls) AS total_vessel_calls
FROM port_data
GROUP BY
YEAR(date),
MONTH(date)
ORDER BY year,month;

--Which year handled the most trade?
SELECT YEAR (date) AS year,
SUM(total_trade) AS yearly_trade
FROM port_data
GROUP BY
YEAR (date)
ORDER BY YEAR;

--Which months had the highest trade volume?
SELECT TOP 10
YEAR(date) AS Year,
MONTH(date) AS month,
SUM(total_trade) AS total_trade
FROM port_data
GROUP BY
YEAR (date),
MONTH(date)
ORDER BY
total_trade DESC;

--Which months experienced the least activity?
SELECT TOP 10
YEAR(date) AS year,
MONTH(date) AS month,
SUM(total_trade) AS total_trade
FROM port_data
GROUP BY
YEAR(date),
MONTH(date)
ORDER BY
total_trade ASC;

--Average Monthly Trade
SELECT
YEAR(date) AS year,
MONTH(date) AS month,
AVG(total_trade) AS avg_monthly_trade
FROM port_data
GROUP BY 
YEAR(date),
MONTH(date)
ORDER BY
year,
month;

--Average Monthly Vessel Calls
SELECT YEAR (date) AS year,
MONTH(date) AS month,
AVG(portcalls) AS avg_montly_vessels
FROM port_data
GROUP BY
YEAR(date),
MONTH(date)
ORDER BY
year,
month;

--Rolling average (Moving Average)
WITH MonthlyTrade AS
(SELECT YEAR(date) AS year,MONTH(date) AS month,
SUM(total_trade) AS monthly_trade
FROM port_data
GROUP BY
YEAR (date),
MONTH(date)

)

SELECT
year,month,monthly_trade,
ROUND(AVG(monthly_trade) OVER
(
ORDER BY year, month
ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
),
2
)AS rolling_3_month_avg

FROM MonthlyTrade
ORDER BY
year,
month;
