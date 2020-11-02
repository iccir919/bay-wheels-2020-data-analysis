# Bay Wheels 2020 Data Analysis

This project is a data analysis of the [Bay Wheels system data](https://www.lyft.com/bikes/bay-wheels/system-data) for the year 2020. [I entered the data into a table](analaysis/table_creations.sql), bay_wheels_2020, on a local MySQL database. The data was queried with [MySQL commands](analysis/data_queries). I was able to easily export the data into JSON with the [MySQL Workbench](https://dev.mysql.com/doc/workbench/en/) application.

## Bay Wheels API Feeds
 - {"name":"system_information","url":"https://gbfs.baywheels.com/gbfs/en/system_information.json"}
 - "name":"station_information","url":"https://gbfs.baywheels.com/gbfs/en/station_information.json"}
 - {"name":"station_status","url":"https://gbfs.baywheels.com/gbfs/en/station_status.json"}
 - {"name":"free_bike_status","url":"https://gbfs.baywheels.com/gbfs/en/free_bike_status.json"}
 - {"name":"system_hours","url":"https://gbfs.baywheels.com/gbfs/en/system_hours.json"}
 - {"name":"system_calendar","url":"https://gbfs.baywheels.com/gbfs/en/system_calendar.json"}
 - {"name":"system_regions","url":"https://gbfs.baywheels.com/gbfs/en/system_regions.json"}
 - {"name":"system_alerts","url":"https://gbfs.baywheels.com/gbfs/en/system_alerts.json"}]


## Helpful Resources
- [How to import a CSV file into a MySQL database?](https://medium.com/@AviGoom/how-to-import-a-csv-file-into-a-mysql-database-ef8860878a68)
- [ERROR: Loading local data is disabled - this must be enabled on both the client and server sides](https://stackoverflow.com/questions/59993844/error-loading-local-data-is-disabled-this-must-be-enabled-on-both-the-client)