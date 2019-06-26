SELECT COUNT(*) as epics_in_progress
FROM Issues
WHERE lower(issuetypename) = 'epic' AND lower(statusname) = 'in progress'