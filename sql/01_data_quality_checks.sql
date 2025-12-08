-- 01 - Data Quality Checks

-- 1) Nombre de lignes par table principale
SELECT 'trips' AS table_name, COUNT(*) AS row_count FROM trips
UNION ALL
SELECT 'customers', COUNT(*) FROM customers
UNION ALL
SELECT 'drivers', COUNT(*) FROM drivers
UNION ALL
SELECT 'cities', COUNT(*) FROM cities;

-- 2) Valeurs manquantes sur les colonnes clés
SELECT
    SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END) AS missing_customer,
    SUM(CASE WHEN driver_id IS NULL THEN 1 ELSE 0 END) AS missing_driver,
    SUM(CASE WHEN price_total IS NULL THEN 1 ELSE 0 END) AS missing_price
FROM trips;

-- 3) Répartition des statuts de course
SELECT status, COUNT(*) AS nb_trips
FROM trips
GROUP BY status;

-- 4) Prix anormaux (négatifs ou très élevés)
SELECT *
FROM trips
WHERE price_total < 0
   OR price_total > 200;
