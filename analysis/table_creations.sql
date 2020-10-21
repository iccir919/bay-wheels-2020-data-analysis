CREATE TABLE 2020_01 (
    duration_sec INT,
    started_at DATETIME,
    ended_at DATETIME,
    start_station_id INT,
    start_station_name VARCHAR(100),
    start_lat DECIMAL(9, 6),
    start_lng DECIMAL(9, 6),
    end_station_id INT,
    end_station_name VARCHAR(100),
    end_lat DECIMAL(9, 6), 
    end_lng DECIMAL(9, 6),
    bike_id INT,
    user_type VARCHAR(10),
    rental_access_method VARCHAR(10)
);

CREATE TABLE 2020_02 (
    duration_sec INT,
    started_at DATETIME,
    ended_at DATETIME,
    start_station_id INT,
    start_station_name VARCHAR(100),
    start_lat DECIMAL(9, 6),
    start_lng DECIMAL(9, 6),
    end_station_id INT,
    end_station_name VARCHAR(100),
    end_lat DECIMAL(9, 6), 
    end_lng DECIMAL(9, 6),
    bike_id INT,
    user_type VARCHAR(10),
    rental_access_method VARCHAR(10)
);

CREATE TABLE 2020_03 (
    duration_sec INT,
    started_at DATETIME,
    ended_at DATETIME,
    start_station_id INT,
    start_station_name VARCHAR(100),
    start_lat DECIMAL(9, 6),
    start_lng DECIMAL(9, 6),
    end_station_id INT,
    end_station_name VARCHAR(100),
    end_lat DECIMAL(9, 6), 
    end_lng DECIMAL(9, 6),
    bike_id INT,
    user_type VARCHAR(10),
    rental_access_method VARCHAR(10)
);

CREATE TABLE 2020_04 (
    ride_id,
    ideable_type,
    started_at,
    ended_at,
    start_station_name,
    start_station_id,
    end_station_name,
    end_station_id,
    start_lat,
    start_lng,
    end_lat,
    end_lng,
    member_casual
);