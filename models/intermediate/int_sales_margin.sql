SELECT 
    products_id,
    date_date,
    orders_id,
    {{ margin_percent('revenue','purchase_price','quantity') }},
    revenue,
    quantity,
    purchase_price,
    ROUND(s.quantity * p.purchase_price, 2) AS purchase_cost,
    ROUND (s.revenue - s.quantity * p.purchase_price, 2) AS margin
from {{ref("stg_raw__sales")}} AS s
INNER JOIN {{ref("stg_raw__product")}} AS p 
USING (products_id)