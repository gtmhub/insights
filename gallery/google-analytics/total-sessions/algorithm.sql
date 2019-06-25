SELECT SUM(sessions) as total_sessions
FROM traffic
WHERE gtmhub.During(startdate::DATE ,'%%date_range%%')