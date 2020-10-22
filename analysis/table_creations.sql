CREATE TABLE bay_wheels_2020 (
    -- duration_sec INT,
    rideable_type VARCHAR(20),
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
    -- bike_id INT,
    member_casual VARCHAR(10)
    -- rental_access_method VARCHAR(10)

);

-- CREATE TABLE 2020_01 (
--     -- duration_sec INT,
--     started_at DATETIME,
--     ended_at DATETIME,
--     start_station_id INT,
--     start_station_name VARCHAR(100),
--     start_lat DECIMAL(9, 6),
--     start_lng DECIMAL(9, 6),
--     end_station_id INT,
--     end_station_name VARCHAR(100),
--     end_lat DECIMAL(9, 6), 
--     end_lng DECIMAL(9, 6),
--     -- bike_id INT,
--     member_casual VARCHAR(10),
--     -- rental_access_method VARCHAR(10)
--     rideable_type VARCHAR(20)
-- );

LOAD DATA LOCAL INFILE '/Users/nricci/Desktop/bay-wheels-2020-data/202001-baywheels-tripdata.csv'
INTO TABLE bay_wheels_2020 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS
 (@dummy, started_at, ended_at, start_station_id, start_station_name, start_lat, start_lng, end_station_id, end_station_name, end_lat, end_lng, @dummy, member_casual, @dummy);

-- CREATE TABLE 2020_02 (
--     -- duration_sec INT,
--     rideable_type VARCHAR(20),
--     started_at DATETIME,
--     ended_at DATETIME,
--     start_station_id INT,
--     start_station_name VARCHAR(100),
--     start_lat DECIMAL(9, 6),
--     start_lng DECIMAL(9, 6),
--     end_station_id INT,
--     end_station_name VARCHAR(100),
--     end_lat DECIMAL(9, 6), 
--     end_lng DECIMAL(9, 6),
--     -- bike_id INT,
--     member_casual VARCHAR(10)
--     -- rental_access_method VARCHAR(10)
-- );

LOAD DATA LOCAL INFILE '/Users/nricci/Desktop/bay-wheels-2020-data/202002-baywheels-tripdata.csv'
INTO TABLE bay_wheels_2020 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS
 (@dummy, started_at, ended_at, start_station_id, start_station_name, start_lat, start_lng, end_station_id, end_station_name, end_lat, end_lng, @dummy, member_casual, @dummy);


-- CREATE TABLE 2020_03 (
--     -- duration_sec INT,
--     started_at DATETIME,
--     ended_at DATETIME,
--     start_station_id INT,
--     start_station_name VARCHAR(100),
--     start_lat DECIMAL(9, 6),
--     start_lng DECIMAL(9, 6),
--     end_station_id INT,
--     end_station_name VARCHAR(100),
--     end_lat DECIMAL(9, 6), 
--     end_lng DECIMAL(9, 6),
--     -- bike_id INT,
--     member_casual VARCHAR(10),
--     -- rental_access_method VARCHAR(10)
--     rideable_type VARCHAR(20)
-- );

LOAD DATA LOCAL INFILE '/Users/nricci/Desktop/bay-wheels-2020-data/202003-baywheels-tripdata.csv'
INTO TABLE bay_wheels_2020 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS
 (@dummy, started_at, ended_at, start_station_id, start_station_name, start_lat, start_lng, end_station_id, end_station_name, end_lat, end_lng, @dummy, member_casual, @dummy);


-- CREATE TABLE 2020_04 (
--     -- ride_id VARCHAR(16),
--     rideable_type VARCHAR(20),
--     started_at DATETIME,
--     ended_at DATETIME,
--     start_station_name VARCHAR(100),
--     start_station_id INT,
--     end_station_name VARCHAR(100),
--     end_station_id INT,
--     start_lat DECIMAL(9, 6),
--     start_lng DECIMAL(9, 6),
--     end_lat DECIMAL(9, 6),
--     end_lng DECIMAL(9, 6),
--     member_casual VARCHAR(10)
-- );

LOAD DATA LOCAL INFILE '/Users/nricci/Desktop/bay-wheels-2020-data/202004-baywheels-tripdata.csv'
INTO TABLE bay_wheels_2020 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS
 (@dummy, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual);

-- CREATE TABLE 2020_05 (
--     -- ride_id VARCHAR(16),
--     rideable_type VARCHAR(20),
--     started_at DATETIME,
--     ended_at DATETIME,
--     start_station_name VARCHAR(100),
--     start_station_id INT,
--     end_station_name VARCHAR(100),
--     end_station_id INT,
--     start_lat DECIMAL(9, 6),
--     start_lng DECIMAL(9, 6),
--     end_lat DECIMAL(9, 6),
--     end_lng DECIMAL(9, 6),
--     member_casual VARCHAR(10)
--     -- is_equity BOOLEAN
-- );

LOAD DATA LOCAL INFILE '/Users/nricci/Desktop/bay-wheels-2020-data/202005-baywheels-tripdata.csv'
INTO TABLE bay_wheels_2020 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS
 (@dummy, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual, @dummy);

-- CREATE TABLE 2020_06 (
--     -- ride_id VARCHAR(16),
--     rideable_type VARCHAR(20),
--     started_at DATETIME,
--     ended_at DATETIME,
--     start_station_name VARCHAR(100),
--     start_station_id INT,
--     end_station_name VARCHAR(100),
--     end_station_id INT,
--     start_lat DECIMAL(9, 6),
--     start_lng DECIMAL(9, 6),
--     end_lat DECIMAL(9, 6),
--     end_lng DECIMAL(9, 6),
--     member_casual VARCHAR(10)
-- );

LOAD DATA LOCAL INFILE '/Users/nricci/Desktop/bay-wheels-2020-data/202006-baywheels-tripdata.csv'
INTO TABLE bay_wheels_2020 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS
 (@dummy, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual);

-- CREATE TABLE 2020_07 (
--     -- ride_id VARCHAR(16),
--     rideable_type VARCHAR(20),
--     started_at DATETIME,
--     ended_at DATETIME,
--     start_station_name VARCHAR(100),
--     start_station_id INT,
--     end_station_name VARCHAR(100),
--     end_station_id INT,
--     start_lat DECIMAL(9, 6),
--     start_lng DECIMAL(9, 6),
--     end_lat DECIMAL(9, 6),
--     end_lng DECIMAL(9, 6),
--     member_casual VARCHAR(10)
-- );

LOAD DATA LOCAL INFILE '/Users/nricci/Desktop/bay-wheels-2020-data/202007-baywheels-tripdata.csv'
INTO TABLE bay_wheels_2020 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS
 (@dummy, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual);

-- CREATE TABLE 2020_08 (
--     -- ride_id VARCHAR(16),
--     rideable_type VARCHAR(20),
--     started_at DATETIME,
--     ended_at DATETIME,
--     start_station_name VARCHAR(100),
--     start_station_id INT,
--     end_station_name VARCHAR(100),
--     end_station_id INT,
--     start_lat DECIMAL(9, 6),
--     start_lng DECIMAL(9, 6),
--     end_lat DECIMAL(9, 6),
--     end_lng DECIMAL(9, 6),
--     member_casual VARCHAR(10)
-- );

LOAD DATA LOCAL INFILE '/Users/nricci/Desktop/bay-wheels-2020-data/202008-baywheels-tripdata.csv'
INTO TABLE bay_wheels_2020 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS
 (@dummy, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual);

-- CREATE TABLE 2020_09 (
--     -- ride_id VARCHAR(16),
--     rideable_type VARCHAR(20),
--     started_at DATETIME,
--     ended_at DATETIME,
--     start_station_name VARCHAR(100),
--     start_station_id INT,
--     end_station_name VARCHAR(100),
--     end_station_id INT,
--     start_lat DECIMAL(9, 6),
--     start_lng DECIMAL(9, 6),
--     end_lat DECIMAL(9, 6),
--     end_lng DECIMAL(9, 6),
--     member_casual VARCHAR(10)
-- );

LOAD DATA LOCAL INFILE '/Users/nricci/Desktop/bay-wheels-2020-data/202009-baywheels-tripdata.csv'
INTO TABLE bay_wheels_2020
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS
 (@dummy, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual);
