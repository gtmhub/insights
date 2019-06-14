SELECT COUNT(*) as epics_in_progress
FROM jira_issues
WHERE lower(issuetypename) = 'epic' AND lower(statusname) = 'in progress'