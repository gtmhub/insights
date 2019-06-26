SELECT COUNT(*) as new_critical_bugs
FROM Issues
WHERE lower(issuetypename) = 'bug' AND lower(priorityname) = 'highest' AND
      created @@ '%%date_range%%'