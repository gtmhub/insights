SELECT
    COUNT(*) AS deals_count,
    SUM(amount) AS bookings
FROM opportunities
WHERE
    deleted = false
    AND
    sales_stage ILIKE '%won%'
    AND
    date_closed @@ '%%date_range%%'