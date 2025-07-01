select
    int_sales_margin.orders_id,
    int_sales_margin.date_date,
    ROUND(SUM(int_sales_margin.revenue),2) as revenue,
    ROUND(SUM(int_sales_margin.quantity),2) as quantity,
    ROUND(SUM(int_sales_margin.purchase_cost),2) as purchase_cost,
    ROUND(SUM(int_sales_margin.margin),2) as margin  
from {{ref("int_sales_margin")}} as int_sales_margin
GROUP BY
    int_sales_margin.orders_id,
    int_sales_margin.date_date