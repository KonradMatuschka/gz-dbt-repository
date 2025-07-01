with 

source as (

    select * from {{ source('gz_raw_data', 'ship') }}

),

renamed as (

    select
        orders_id,
        cast(shipping_fee as FLOAT64) as shipping_fee,
        cast(logcost as FLOAT64) as log_cost, 
        cast(ship_cost as FLOAT64) as ship_cost

    from source

)

select * from renamed

