SELECT
  FORMAT_DATE('%b %Y', DATE(created_at)) AS month_year,
  event_type,
  COUNT(*) AS event_count
FROM
  `bigquery-public-data.thelook_ecommerce.events`
GROUP BY
  month_year,
  event_type
ORDER BY
  month_year,
  event_type;
