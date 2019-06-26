SELECT ROUND(AVG(now()::date - created::date), 2) as average_age
FROM Issues
WHERE lower(issuetypename) = 'epic' AND NULLIF(resolutionname, '') IS NULL