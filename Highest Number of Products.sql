with cte as 
(
	  select user_id, count(*) as product_num, sum(spend) as u_spend 
	  from user_transactions
	  group by user_id order by 2 desc
)
select user_id, product_num
from cte where u_spend >= 1000
order by 2 desc, u_spend desc
limit 3;