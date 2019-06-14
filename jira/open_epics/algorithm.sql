SELECT COUNT(*) AS epics_open
FROM jira_issues
WHERE lower(issuetypename) = 'epic' AND NULLIF (resolutionname, '') IS NULL