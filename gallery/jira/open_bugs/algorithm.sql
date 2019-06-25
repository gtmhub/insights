SELECT COUNT(*) as open_bugs
FROM Issues
WHERE lower(issuetypename) = 'bug' AND NULLIF(resolutionname, '') IS NULL