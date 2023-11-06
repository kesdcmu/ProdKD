--Code for SQL Model Adapted from Lecture 4 and ChatGbT

-- models/fhvhv_tripdata.sql

-- Define a CTE to clean and transform the data

with source as (SELECT * from {{source( 'main', 'fhvhv_tripdata')}}
),

renamed as (

  SELECT
    hvfhs_license_num as license_num,
    dispatching_base_num as base_number,
    originating_base_num as originating_base_num,
    request_datetime as request_datetime,
    on_scene_datetime as on_scene_datetime,
    pickup_datetime as pickup_datetime,
    dropoff_datetime as dropoff_datetime,
    pulocationid as pulocationid,
    dolocationid as dolocationid,
    trip_miles as trip_miles,
    trip_time as trip_time,
    base_passenger_fare as base_passenger_fare,
    tolls as tolls,
    bcf as bcf,
    sales_tax as sales_tax,
    congestion_surcharge as congestion_surcharge,
    airport_fee as airport_fee,
    tips as tips,
    driver_pay as driver_pay,
    shared_request_flag as shared_request_flag,
    shared_match_flag as shared_match_flag,
    access_a_ride_flag as access_a_ride_flag,
    wav_request_flag as wav_request_flag,
    wav_match_flag as wav_match_flag,
    filename
  FROM {{source('main', 'fhvhv_tripdata')}}
)

-- Select the final output
select * from renamed
