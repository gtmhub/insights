SELECT COALESCE(SUM(amount), 0) as bookings 
FROM Deals
WHERE 
    stage ILIKE '%won%'
    AND
    closingdate @@ '%%date_range%%'