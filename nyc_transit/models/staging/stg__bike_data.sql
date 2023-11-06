--Code for SQL Model Adapted from Lecture 4 and ChatGbT

-- models/bike_data.sql

-- Define a CTE to clean and transform the data
with source as (SELECT * from {{source( 'main', 'bike_data')}}
),

renamed as (
  SELECT
    tripduration as trip_duration,
    starttime as start_time,
    stoptime as stop_time,
    "start station id" as start_station_id,
    "start station name" as start_station_name,
    "start station latitude" || ',' || "start station longitude" as start_station_lat_long,
    "end station id" as end_station_id,
    "end station name" as end_station_name,
    "end station latitude" || ',' || "end station longitude" as end_station_lat_long,
    bikeid,
    usertype as user_type,
    "birth year" as year_of_birth,
    gender,
    ride_id,
    rideable_type,
    started_at,
    ended_at,
    start_station_name as start_station_name,
    "start station id" as start_station_id,
    "end station name" as end_station_name,
    "end station id" as end_station_id,
    "start_lat" as start_lat,
    "start_lng" as start_lng,
    "end_lat" as end_lat,
    "end_lng" as end_lng,
    member_casual,
    filename
  FROM {{source('main', 'bike_data')}}
)

-- Select the final output
select * from renamed