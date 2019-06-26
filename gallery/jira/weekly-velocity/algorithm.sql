SELECT COALESCE(ROUND(AVG("count"), 2), 0) as weekly_velocity
FROM (
       SELECT
         date_trunc('week', resolutiondate) as week,
         COUNT(DISTINCT id) as "count"
       FROM Issues
       WHERE lower(resolutionname) = 'done' AND resolutiondate @@ '%%date_range%%'
             AND lower(issuetypename) IN ('story', 'bug')
       GROUP BY 1
       ORDER BY 1 DESC
     ) weeks