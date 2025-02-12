SELECT
     date_trunc(date_date, MONTH) AS datemonth,
     ROUND (SUM(operational_margin - ads_cost),0) AS ads_margin,
     ROUND (SUM(average_basket),0) AS average_basket,
     ROUND (SUM(operational_margin),0) AS operational_margin,
     ROUND (SUM(ads_cost),0) AS ads_cost,
     ROUND (SUM(impression),0) AS impression,
     ROUND (SUM(click),0) AS clicks,
     ROUND (SUM(quantity),0) AS quantity,
     ROUND (SUM(revenue),0) AS revenue,
     ROUND (SUM(purchase_cost),0) AS purchase_cost,
     ROUND (SUM(margin),0) AS margin,
     ROUND (SUM(shipping_fee),0) AS shipping_fee,
     ROUND (SUM(logcost),0) AS logcost,
     ROUND (SUM(ship_cost),0) AS ship_cost,
FROM {{ ref('int_campaigns_day') }}
FULL OUTER JOIN {{ ref('finance_days') }}
USING (date_date)
GROUP BY datemonth
ORDER BY datemonth desc

