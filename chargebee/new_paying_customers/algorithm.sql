select COUNT(*) as new_paying_customers from chargebee_subscriptions
where 
		subscription_status = 'active' 
	and 
	    subscription_mrr > 0
	and 
		gtmhub.DURING(subscription_activated_at, '%%date_range%%')