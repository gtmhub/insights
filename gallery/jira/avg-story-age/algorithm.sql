SELECT ROUND(AVG(now() :: DATE - created :: DATE), 2) AS average_age
FROM Issues
WHERE lower(issuetypename) = 'story' AND NULLIF (resolutionname, '') IS NULL