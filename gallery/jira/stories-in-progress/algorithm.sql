SELECT COUNT(*) as stories_in_progress
FROM Issues
WHERE lower(issuetypename) = 'story' AND lower(statusname) = 'in progress'