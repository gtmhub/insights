SELECT SUM(pageviews) as total_page_views
FROM SiteContent
WHERE gtmhub.During(startdate::DATE ,'%%date_range%%')