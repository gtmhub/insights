-- sum up all of the mrr and apply exchange rate, if present
SELECT sum(subscription_mrr / coalesce(subscription_exchange_rate, 1))/100 AS total_mmr 
FROM subscriptions