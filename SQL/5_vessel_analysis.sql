USE SriLankaPorts;
GO
--Which port receive the largest number of container ships?
SELECT portname, SUM(portcalls_container) AS total_container_calls
FROM port_data
GROUP BY portname
ORDER BY total_container_calls DESC;

--Which ports receive the highest number of tanker vessels?
SELECT portname, SUM(portcalls_tanker) AS total_tanker_calls
FROM port_data
GROUP BY portname
ORDER BY total_tanker_calls DESC;

--Dry Bulk Traffic
SELECT portname,
SUM(portcalls_dry_bulk) AS total_dry_bulk_calls
FROM port_data
GROUP BY portname
ORDER BY total_dry_bulk_calls DESC;

--General Cargo Traffic
SELECT portname,
SUM(portcalls_general_cargo) AS total_general_cargo_calls
FROM port_data
GROUP BY portname
ORDER BY total_general_cargo_calls DESC;

--Ro-Ro Traffic
SELECT portname, SUM(portcalls_roro) AS total_roro_calls
FROM port_data
GROUP BY portname
ORDER BY total_roro_calls DESC;

-- Most Container-Focused Ports
SELECT portname,
ROUND(AVG(container_share)*100,2) AS avg_container_percentage
FROM port_data
GROUP BY portname
ORDER BY avg_container_percentage DESC;

--Most Tanker-Focused Ports
SELECT portname,
ROUND(AVG(tanker_share)*100,2) AS avg_tanker_percentage
FROM port_data
GROUP BY portname
ORDER BY avg_tanker_percentage DESC;

--Average Vessels per Day
SELECT portname, AVG(portcalls) AS avg_daily_vessels
FROM port_data
GROUP BY portname
ORDER BY avg_daily_vessels DESC;

--Vessel Composition Summary
SELECT portname,
SUM(portcalls_container) AS container_calls,

    SUM(portcalls_dry_bulk) AS dry_bulk_calls,

    SUM(portcalls_general_cargo) AS general_cargo_calls,

    SUM(portcalls_roro) AS roro_calls,

    SUM(portcalls_tanker) AS tanker_calls,

    SUM(portcalls) AS total_vessel_calls
FROM port_data
GROUP BY portname
ORDER BY total_vessel_calls DESC;

--Vessel Specialization Classification
SELECT portname,
AVG(container_share) AS container_share,

    AVG(dry_bulk_share) AS dry_bulk_share,

    AVG(general_cargo_share) AS general_cargo_share,

    AVG(roro_share) AS roro_share,

    AVG(tanker_share) AS tanker_share,

	CASE

        WHEN AVG(container_share) >= ALL
        (
            SELECT MAX(avg_share)
            FROM
            (
                SELECT AVG(container_share) AS avg_share
                UNION ALL
                SELECT AVG(dry_bulk_share)
                UNION ALL
                SELECT AVG(general_cargo_share)
                UNION ALL
                SELECT AVG(roro_share)
                UNION ALL
                SELECT AVG(tanker_share)
            ) AS shares
        )
        THEN 'Container Hub'

		WHEN AVG(tanker_share) >= AVG(container_share)
             AND AVG(tanker_share) >= AVG(dry_bulk_share)
             AND AVG(tanker_share) >= AVG(general_cargo_share)
             AND AVG(tanker_share) >= AVG(roro_share)
        THEN 'Tanker Hub'

        ELSE 'Mixed Operations'

    END AS port_specialization

FROM port_data

GROUP BY portname

ORDER BY portname;