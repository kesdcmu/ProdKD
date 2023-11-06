--Code for SQL Model Adapted from Lecture 4 and ChatGbT

with source as (SELECT * from {{source( 'main', 'fhv_bases')}}
),

renamed as (

  SELECT
    base_number,
    base_name,
    dba,
    dba_category,
    filename
  FROM {{source('main', 'fhv_bases')}}
)

-- Select the final output
select * from renamed
