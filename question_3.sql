SELECT
  FORMAT_DATE('%b %Y', DATE(created_at)) AS month_year,
  COUNT(*) AS event_count
FROM
  `bigquery-public-data.thelook_ecommerce.events`
WHERE
  event_type = 'cancel'
  AND DATE(created_at) BETWEEN '2022-01-01' AND '2023-09-30'
GROUP BY
  month_year
ORDER BY
  MIN(DATE(created_at)) ASC;
