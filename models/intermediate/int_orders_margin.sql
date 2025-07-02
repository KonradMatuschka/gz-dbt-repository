select
    int_sales_margin.orders_id,
    int_sales_margin.date_date,
    cast(ROUND(SUM(int_sales_margin.revenue),2) as FLOAT64) as revenue,
    cast(ROUND(SUM(int_sales_margin.quantity),2) as FLOAT64) as quantity,
    cast(ROUND(SUM(int_sales_margin.purchase_cost),2) as FLOAT64) as purchase_cost,
    cast(ROUND(SUM(int_sales_margin.margin),2) as FLOAT64) as margin  
from {{ref("int_sales_margin")}} as int_sales_margin
GROUP BY
    int_sales_margin.orders_id,
    int_sales_margin.date_date