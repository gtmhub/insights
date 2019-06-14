SELECT 
    COALESCE(COUNT(*),0) as "deal_count",
    COALESCE(AVG(amount),0) as "avg_amount",
    COALESCE(SUM(amount),0) as "total_amount"
FROM hs_deals d
JOIN 
    (
        SELECT
            stageid,
            stageclosedwon
        FROM hs_deal_pipeline_stages
    ) s
    ON (d.deal_stage = s.stageid)
WHERE 
    close_date @@ '%%date_range%%'
    AND
    s.stageclosedwon = TRUE