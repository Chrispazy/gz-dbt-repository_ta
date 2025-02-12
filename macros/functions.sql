{% macro margin_percent(revenue,purchase_price,quantity) %}
ROUND(SAFE_DIVIDE(({{revenue}}-({{purchase_price}}*{{quantity}})),{{revenue}})*100,2) AS margin_percent
{% endmacro %}