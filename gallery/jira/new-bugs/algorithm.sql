SELECT COUNT(*) as new_bugs
FROM Issues
WHERE lower(issuetypename) = 'bug' and
      created @@ '%%date_range%%'