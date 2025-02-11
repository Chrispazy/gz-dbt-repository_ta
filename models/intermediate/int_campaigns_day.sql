SELECT 
    date_date,
    SUM(ads_cost) AS ads_cost,
    SUM(impression) AS impression,
    SUM(click) as click
FROM {{ ref('int_campaigns') }}
GROUP BY date_date
ORDER BY date_date DESC