SELECT
  ROUND(AVG(tm.requester_wait_time_in_minutes_business), 2) as avg_bus,
  ROUND(AVG(tm.requester_wait_time_in_minutes_calendar), 2) as avg_cal
FROM ticket_metrics tm
  INNER JOIN (
               SELECT id, created_at
               FROM tickets) t
    ON (tm.ticket_id = t.id)
WHERE t.created_at @@ '%%date_range%%'