select
    int_orders_margin.orders_id,
    int_orders_margin.date_date,
    ROUND(SUM(int_orders_margin.margin + stg_raw_ship.shipping_fee - stg_raw_ship.log_cost - stg_raw_ship.ship_cost),2) as operational_margin,
    int_orders_margin.revenue as revenue,
    int_orders_margin.quantity as quantity,
    int_orders_margin.purchase_cost as purchase_cost,
    int_orders_margin.margin as margin,
    stg_raw_ship.shipping_fee as shipping_fee,
    stg_raw_ship.log_cost as log_cost,
    stg_raw_ship.ship_cost as ship_cost
from {{ref("int_orders_margin")}}
JOIN {{ref("stg_raw_ship")}}
USING (orders_id)
GROUP BY 
    int_orders_margin.orders_id,
    int_orders_margin.date_date,
    revenue,
    quantity,
    purchase_cost,
    margin,
    shipping_fee,
    log_cost,
    ship_cost