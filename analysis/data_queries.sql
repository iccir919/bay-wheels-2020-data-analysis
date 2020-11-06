/* 
    Cure for the following error message:
    ERROR 1055 (42000): Expression #2 of SELECT list is not in GROUP BY clause and contains nonaggregated column
*/
SET SESSION sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

/* Total number of trips */
SELECT COUNT(*)
FROM bay_wheels_2020;

/* Average duration of trips */
SELECT
    SEC_TO_TIME( AVG( TIME_TO_SEC( TIMEDIFF(ended_at, started_at) ) ) ) AS average_duration
FROM bay_wheels_2020;

/* Average length of trips */
SELECT 
   AVG(69.0 *
    DEGREES(ACOS(LEAST(1.0, COS(RADIANS(start_lat))
         * COS(RADIANS(end_lat))
         * COS(RADIANS(start_lng - end_lng))
         + SIN(RADIANS(start_lat))
         * SIN(RADIANS(end_lat)))))) AS average_distance
FROM bay_wheels_2020
WHERE 
    start_station_id NOT IN (0, 449) AND 
    end_station_id NOT IN (0, 449);

/* Total rides per month (April - September) by bike type, electrical or traditional */
SELECT monthname(started_at), rideable_type, count(*) AS total
FROM bay_wheels_2020
WHERE rideable_type IS NOT NULL
GROUP BY monthname(started_at), rideable_type
ORDER BY total DESC;

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

/* Total number of departures AND arrivals by docking station */
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

/* Total number of trips per day */
SELECT 
    DATE_FORMAT(started_at, '%Y-%m-%d') AS day,
    COUNT(*) AS total
FROM bay_wheels_2020
GROUP BY day
ORDER BY day;

/* Most popular routes between stations */
SELECT 
    CASE
        WHEN start_station_name < end_station_name 
            THEN CONCAT(start_station_name, ' - ', end_station_name)
        ELSE
            CONCAT(end_station_name, ' - ', start_station_name)
    END AS trip_route,
    start_lat,
    start_lng,
    end_lat,
    end_lng,
    COUNT(*) as total
FROM bay_wheels_2020
WHERE
    start_station_id NOT IN (0, 449)  
    AND end_station_id NOT IN (0, 449)
GROUP BY trip_route
ORDER BY total DESC
LIMIT 100;