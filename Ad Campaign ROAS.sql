with cte as 
(
    select advertiser_id, sum(spend) as spend, sum(revenue) as revenue
    from ad_campaigns
    group by advertiser_id
    order by advertiser_id
)
select advertiser_id, round((revenue/spend)::numeric, 2) as "ROAS"
from cte;