-- 03 - Funnel d'acquisition clients

WITH completed_trips AS (
    SELECT *
    FROM trips
    WHERE status = 'completed'
),
trips_per_customer AS (
    SELECT
        customer_id,
        COUNT(*) AS nb_trips
    FROM completed_trips
    GROUP BY customer_id
)

-- Step1 : clients avec >= 1 course
SELECT COUNT(*) AS step1_customers
FROM trips_per_customer;

-- Step2 : clients avec >= 2 courses
SELECT COUNT(*) AS step2_customers
FROM trips_per_customer
WHERE nb_trips >= 2;

-- Step3 : clients avec >= 3 courses
SELECT COUNT(*) AS step3_customers
FROM trips_per_customer
WHERE nb_trips >= 3;

-- Bonus : distribution nb_trips
SELECT nb_trips, COUNT(*) AS nb_customers
FROM trips_per_customer
GROUP BY nb_trips
ORDER BY nb_trips;
