SELECT SUM(unsubscribed) as mailchimp_unsubscribed_count
FROM Reports
WHERE gtmhub.DURING(sendtime, '%%date_range%%')