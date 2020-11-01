/* Total rides per month (April - September) by bike type, electrical or traditional */
SELECT monthname(started_at), rideable_type, count(*) AS total
FROM bay_wheels_2020
WHERE rideable_type IS NOT NULL
GROUP BY monthname(started_at), rideable_type
ORDER BY total DESC;

/* Total number of departures and arrivals by docking station */
SELECT 
    station_activity_by_id.station_id AS station_id, 
    station_info.station_name,
    station_info.station_lat,
    station_info.station_lng,
    COUNT(*) AS total
FROM
(
SELECT start_station_id AS station_id FROM bay_wheels_2020 WHERE start_station_id != 0
UNION ALL
SELECT end_station_id AS station_id FROM bay_wheels_2020 WHERE end_station_id != 0
) AS station_activity_by_id
JOIN (
    SELECT 
        end_station_id,
        end_station_name AS station_name,
        end_lat AS station_lat,
        end_lng AS station_lng
    FROM
        bay_wheels_2020
    WHERE end_station_id != 0
    GROUP BY end_station_id
) AS station_info 
ON station_info.end_station_id = station_activity_by_id.station_id
GROUP BY station_activity_by_id.station_id
ORDER BY station_activity_by_id.station_id;

/* Total number of departures by station */
SELECT 
    start_station_id AS station_id, 
    start_station_name AS station_name,
    start_lat AS station_lat,
    start_lng AS station_lng,
    COUNT(*) AS total
FROM bay_wheels_2020 
WHERE start_station_id != 0
GROUP BY station_id
ORDER BY station_id;

/* Total number of arrivals by station */
SELECT 
    end_station_id AS station_id, 
    end_station_name AS station_name,
    end_lat AS station_lat,
    end_lng AS station_lng,
    COUNT(*) AS total
FROM bay_wheels_2020 
WHERE end_station_id != 0
GROUP BY station_id
ORDER BY station_id;

/* Total number of trips per day */
SELECT 
    DATE_FORMAT(started_at, '%Y-%m-%d') AS day,
    COUNT(*) AS total
FROM bay_wheels_2020
GROUP BY day
ORDER BY day;