SELECT *
FROM {{ ref('finance_days') }} as f
INNER JOIN {{ ref('int_campaigns_day') }} as i
USING (date_date)