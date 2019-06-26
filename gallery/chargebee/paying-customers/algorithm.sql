select COUNT(*) as paying_customers from subscriptions
where 
		subscription_status = 'active' 
	and 
	    subscription_mrr > 0