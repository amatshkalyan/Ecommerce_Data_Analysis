WITH EventCounts AS (
  SELECT
    FORMAT_DATE('%b %Y', DATE(created_at)) AS month_year,
    event_type,
    COUNT(*) AS event_count
  FROM
    `bigquery-public-data.thelook_ecommerce.events`
  GROUP BY
    month_year,
    event_type
)

SELECT
  ec.month_year,
  ec.event_type,
  ec.event_count,
  ROUND((ec.event_count / total_events.total_count) * 100, 2) AS percentage_of_total
FROM
  EventCounts ec
JOIN (
  SELECT
    FORMAT_DATE('%b %Y', DATE(created_at)) AS month_year,
    COUNT(*) AS total_count
  FROM
    `bigquery-public-data.thelook_ecommerce.events`
  GROUP BY
    month_year
) total_events ON ec.month_year = total_events.month_year
ORDER BY
  ec.month_year,
  ec.event_type;

