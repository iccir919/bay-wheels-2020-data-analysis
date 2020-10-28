SELECT monthname(started_at), rideable_type, count(*) AS total
FROM bay_wheels_2020
WHERE rideable_type IS NOT NULL
GROUP BY monthname(started_at), rideable_type
ORDER BY total DESC;