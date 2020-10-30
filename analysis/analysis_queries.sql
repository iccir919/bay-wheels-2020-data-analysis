/* Total rides per month (April - September) by bike type, electrical or traditional */
SELECT monthname(started_at), rideable_type, count(*) AS total
FROM bay_wheels_2020
WHERE rideable_type IS NOT NULL
GROUP BY monthname(started_at), rideable_type
ORDER BY total DESC;

/* Total number of departures and arrivals by docking station */
SELECT station_to_station_trips.station_id AS station_id, COUNT(*) AS count
FROM
(
SELECT start_station_id AS station_id FROM bay_wheels_2020 WHERE start_station_id != 0
UNION ALL
SELECT end_station_id AS station_id FROM bay_wheels_2020 WHERE end_station_id != 0
) AS station_to_station_trips
GROUP BY station_to_station_trips.station_id
ORDER BY station_to_station_trips.station_id;
