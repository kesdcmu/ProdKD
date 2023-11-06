--Code for SQL Model Adapted from Lecture 4 and ChatGbT

-- models/fhv_tripdata.sql

-- Define a CTE to clean and transform the data
with source as (SELECT * from {{source( 'main', 'fhv_tripdata')}}
),

renamed as (

  SELECT
    dispatching_base_num as base_number,
    pickup_datetime as pickup_datetime,
    dropoff_datetime as dropoff_datetime,
    pulocationid as pulocationid,
    dolocationid as dolocationid,
    sr_flag as sr_flag,
    affiliated_base_number,
    filename

  FROM {{source('main', 'fhv_tripdata')}}
)

-- Select the final output
select * from renamed