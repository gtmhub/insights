SELECT COUNT(*) AS epics_open
FROM Issues
WHERE lower(issuetypename) = 'epic' AND NULLIF (resolutionname, '') IS NULL