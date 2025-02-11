SELECT 
    date_date,
    operational_margin - ads_cost AS ads_margin,
    ROUND(average_basket,2) AS average_basket,
    operational_margin,
    ads_cost,
    impression,
    click,
    quantity,
    revenue,
    purchase_cost,
    margin,
    shipping_fee,
    logcost,
    ship_cost
FROM {{ ref('finance_days') }} as f
INNER JOIN {{ ref('int_campaigns_day') }} as i
USING (date_date)