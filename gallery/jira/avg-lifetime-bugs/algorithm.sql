SELECT ROUND(AVG(resolutiondate::date - created::date), 2) as average_lifetime
FROM Issues
WHERE lower(issuetypename) = 'bug'