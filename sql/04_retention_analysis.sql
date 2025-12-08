-- 04 - Analyse de rétention

WITH completed_trips AS (
    SELECT *
    FROM trips
    WHERE status = 'completed'
),
first_trip AS (
    SELECT
        customer_id,
        MIN(pickup_time) AS first_trip_time
    FROM completed_trips
    GROUP BY customer_id
),
second_trip_7d AS (
    SELECT
        f.customer_id,
        MIN(t.pickup_time) AS second_trip_time
    FROM first_trip f
    JOIN completed_trips t
      ON t.customer_id = f.customer_id
     AND t.pickup_time > f.first_trip_time
     AND t.pickup_time <= DATETIME(f.first_trip_time, '+7 days')
    GROUP BY f.customer_id
),
second_trip_1d AS (
    SELECT
        f.customer_id,
        MIN(t.pickup_time) AS second_trip_time
    FROM first_trip f
    JOIN completed_trips t
      ON t.customer_id = f.customer_id
     AND t.pickup_time > f.first_trip_time
     AND t.pickup_time <= DATETIME(f.first_trip_time, '+1 day')
    GROUP BY f.customer_id
)

-- Rétention J+7
SELECT
    (SELECT COUNT(*) FROM second_trip_7d) * 1.0 /
    (SELECT COUNT(*) FROM first_trip) AS retention_7d,
    (SELECT COUNT(*) FROM second_trip_1d) * 1.0 /
    (SELECT COUNT(*) FROM first_trip) AS retention_1d;
