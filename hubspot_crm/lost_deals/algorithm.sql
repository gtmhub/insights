SELECT 
    COUNT(*) as "deal_count",
    AVG(amount) as "avg_amount",
    SUM(amount) as "total_amount"
FROM hs_deals d
JOIN 
    (
        SELECT
            stageid,
            stagename,
        FROM hs_deal_pipeline_stages
    ) s
    ON (d.deal_stage = s.stageid)
WHERE 
    close_date @@ '%%date_range%%'
    AND
    s.stagename = 'Closed Lost'