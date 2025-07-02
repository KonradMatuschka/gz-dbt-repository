select 
    date_date
    , COUNT(orders_id) as total_nr_transactions
    , ROUND(SUM(revenue),2) as total_revenue
    , ROUND(SUM(revenue) / COUNT(orders_id), 2) as average_basket
    , ROUND(SUM(operational_margin),2) as operational_margin
    , ROUND(SUM(purchase_cost),2) as total_purchase_cost
    , ROUND(SUM(shipping_fee),2) as total_shipping_fees
    , ROUND(SUM(log_cost),2) as total_log_cost
    , ROUND(SUM(quantity),2) as total_qty_products
from {{ref("int_orders_operational")}}
GROUP BY 
    date_date