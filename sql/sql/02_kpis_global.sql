-- 02 - KPI Globaux

-- 1) KPI sur les courses complétées uniquement
WITH completed_trips AS (
    SELECT *
    FROM trips
    WHERE status = 'completed'
)

-- CA total
SELECT SUM(price_total) AS total_revenue
FROM completed_trips;

-- Nombre de courses complétées
SELECT COUNT(*) AS nb_completed_trips
FROM completed_trips;

-- CA moyen par course
SELECT AVG(price_total) AS avg_revenue_per_trip
FROM completed_trips;

-- Nombre de clients uniques
SELECT COUNT(DISTINCT customer_id) AS nb_active_customers
FROM completed_trips;

-- % des courses business (si tu as une colonne 'is_business' ou 'business_flag')
à COMPLETER
