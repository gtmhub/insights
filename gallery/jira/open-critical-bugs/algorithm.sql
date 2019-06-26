SELECT COUNT(*) as critical_bugs
FROM Issues
WHERE lower(priorityname) = 'highest' AND lower(issuetypename) = 'bug' AND
      NULLIF(resolutionname, '') IS NULL