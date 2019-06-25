SELECT COALESCE(SUM(amount), 0) as bookings 
FROM zoho_deals
WHERE 
    stage ILIKE '%won%'
    AND
    closingdate @@ '%%date_range%%'