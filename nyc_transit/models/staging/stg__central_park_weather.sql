--Code for SQL Model Adapted from Lecture 4 and ChatGbT

--example Model from Week 2 Lecture 4 15:30 

with source as (SELECT * from {{source( 'main', 'central_park_weather')}}
),

renamed as (

    SELECT
    station,
    name,
    date::date as date,
    awnd::double as awnd,
    prcp::double as prcp,
    snow::double as snow,
    snwd::double as snwd,
    tmax::int as tmax,
    tmin::int as tmin,
    filename

    from source

)

select * from renamed