--Code for SQL Model Adapted from Lecture 4 and ChatGbT

-- models/green_tripdata.sql

-- Define a CTE to clean and transform the data
with source as (SELECT * from {{source( 'main', 'green_tripdata')}}
),

renamed as (

  SELECT
    vendorid as vendorid,
    lpep_pickup_datetime as lpep_pickup_datetime,
    lpep_dropoff_datetime as lpep_dropoff_datetime,
    store_and_fwd_flag as store_and_fwd_flag,
    ratecodeid as ratecodeid,
    pulocationid as pulocationid,
    dolocationid as dolocationid,
    passenger_count as passenger_count,
    trip_distance as trip_distance,
    fare_amount as fare_amount,
    extra as extra,
    mta_tax as mta_tax,
    tip_amount as tip_amount,
    tolls_amount as tolls_amount,
    ehail_fee as ehail_fee,
    improvement_surcharge as improvement_surcharge,
    total_amount as total_amount,
    payment_type as payment_type,
    trip_type as trip_type,
    congestion_surcharge as congestion_surcharge,
    filename
  FROM {{source('main', 'green_tripdata')}}
)

-- Select the final output
select * from renamed
