-- Which ports receive the highest number of vessel arrivals
SELECT   portname,SUM(portcalls) AS total_port_calls
FROM port_data GROUP BY portname ORDER BY total_port_calls DESC;

--Which ports handle the largest trade volume?
SELECT portname,SUM(total_trade) AS total_trade_volume
FROM port_data
GROUP BY portname
ORDER BY total_trade_volume DESC;

--Ports with highest imports
SELECT portname,SUM(import) AS total_imports
FROM port_data
GROUP BY portname
ORDER BY total_imports DESC;

--Ports with highest exports
SELECT portname, SUM(export) AS total_exports FROM
port_data GROUP BY portname ORDER BY total_exports DESC;

--Lowest activity ports
SELECT portname,SUM(portcalls) AS total_port_calls
FROM port_data GROUP BY portname ORDER BY total_port_calls ASC;

--Average daily trade by port
SELECT portname,AVG(total_trade) AS avg_daily_trade
FROM port_data GROUP BY portname
ORDER BY avg_daily_trade DESC;

--Average daily port calls
SELECT portname, AVG(portcalls) AS avg_daily_port_calls
FROM port_data
GROUP BY portname
ORDER BY avg_daily_port_calls DESC;

--Combined port performance
SELECT portname,SUM(portcalls) AS total_port_calls,
SUM(import) AS total_imports,
SUM(export) AS total_exports,
SUM(total_trade) AS total_trade,
AVG(total_trade) AS avg_daily_trade,
AVG (portcalls) AS avg_daily_port_calls
FROM port_data
GROUP BY portname
ORDER BY total_trade DESC;

--Port contribution to Total Trade
--What percentage of Sri Lankan's total trade is handled by each port?
SELECT portname,SUM(total_trade) AS total_trade,
ROUND (SUM(total_trade)*100.0/
(SELECT SUM (total_trade) FROM port_data),
2)AS trade_share_percentage
FROM port_data
GROUP BY portname
ORDER BY total_trade DESC;