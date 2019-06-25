SELECT
  COUNT(*) as all_tickets,
  COUNT(*) FILTER (WHERE lower(status) IN ('solved', 'closed')) as solved
FROM tickets
WHERE created_at @@ '%%date_range%%'