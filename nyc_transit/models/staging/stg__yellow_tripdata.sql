--Code for SQL Model Adapted from Lecture 4 and ChatGbT

-- models/yellow_tripdata.sql

with source as (SELECT * from {{source( 'main', 'yellow_tripdata')}}
),

renamed as (
  SELECT
    vendorid as vendorid,
    tpep_pickup_datetime as tpep_pickup_datetime,
    tpep_dropoff_datetime as tpep_dropoff_datetime,
    passenger_count as passenger_count,
    trip_distance as trip_distance,
    ratecodeid as ratecodeid,
    store_and_fwd_flag as store_and_fwd_flag,
    pulocationid as pulocationid,
    dolocationid as dolocationid,
    payment_type as payment_type,
    fare_amount as fare_amount,
    extra as extra,
    mta_tax as mta_tax,
    tip_amount as tip_amount,
    tolls_amount as tolls_amount,
    improvement_surcharge as improvement_surcharge,
    total_amount as total_amount,
    congestion_surcharge as congestion_surcharge,
    airport_fee as airport_fee,
    filename
  FROM {{source('main', 'yellow_tripdata')}}
)

-- Select the final output
select * from renamed
