select
    stg_raw_sales.*,
    stg_raw_sales.quantity * stg_raw_product.purchase_price as purchase_cost, 
    ROUND(stg_raw_sales.revenue - (stg_raw_sales.quantity * stg_raw_product.purchase_price),2) AS margin
from {{ref("stg_raw_sales")}} as stg_raw_sales
JOIN {{ref("stg_raw_product")}} as stg_raw_product
USING(products_id)