SELECT AVG(value) as average_open_deal_size
FROM Deals
WHERE 
    status NOT IN ('won', 'lost')
    AND
    gtmhub.DURING(add_time, '%%date_range%%')