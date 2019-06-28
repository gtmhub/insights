SELECT SUM(amount) as won_opps_amount
FROM salesforce_opportunity
WHERE iswon = TRUE AND
      closedate @@ '%%date_range%%'