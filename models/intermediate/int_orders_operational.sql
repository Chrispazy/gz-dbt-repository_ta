 SELECT 
    i.orders_id,
    i.date_date,
    ROUND(margin + shipping_fee - logcost- ship_cost,2) AS operational_margin,
    i.revenue,
    i.quantity,
    i.purchase_cost,
    i.margin,
    s.shipping_fee,
    s.logcost,
    s.ship_cost
 FROM {{ ref('int_orders_margin') }} i
 INNER JOIN {{ ref('stg_raw__ship') }} s
 USING(orders_id)
 ORDER BY orders_id DESC