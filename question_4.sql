WITH MonthlyPurchaseCounts AS (
  SELECT
    FORMAT_DATE('%Y-%m', DATE(created_at)) AS month_year,
    COUNT(*) AS purchase_event_count
  FROM
    `bigquery-public-data.thelook_ecommerce.events`
  WHERE
    event_type = 'purchase'
    AND DATE(created_at) BETWEEN '2022-01-01' AND '2023-09-30'
  GROUP BY
    month_year
),

MonthlyShippedOrders AS (
  SELECT
    FORMAT_DATE('%Y-%m', DATE(o.created_at)) AS month_year,
    COUNT(DISTINCT o.order_id) AS shipped_order_count
  FROM
    `bigquery-public-data.thelook_ecommerce.orders` o
  WHERE
    o.status = 'Shipped'
    AND DATE(o.created_at) BETWEEN '2022-01-01' AND '2023-09-30'
  GROUP BY
    month_year
)

SELECT
  p.month_year,
  ROUND((p.purchase_event_count - LAG(p.purchase_event_count) OVER (ORDER BY p.month_year)) / LAG(p.purchase_event_count) OVER (ORDER BY p.month_year) * 100, 2) AS purchase_month_over_month_growth,
  ROUND((s.shipped_order_count - LAG(s.shipped_order_count) OVER (ORDER BY p.month_year)) / LAG(s.shipped_order_count) OVER (ORDER BY p.month_year) * 100, 2) AS shipped_order_month_over_month_growth
FROM
  MonthlyPurchaseCounts p
LEFT JOIN
  MonthlyShippedOrders s
ON
  p.month_year = s.month_year
ORDER BY
  p.month_year;
